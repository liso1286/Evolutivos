# 00 — Workflow de migración Delphi 6 → Delphi 12/13

## 0. Prerequisitos e inventario (configurar antes de empezar)

Copia esta tabla y rellena los valores del proyecto nuevo:

```text
APP_1_EXE_ORIGINAL      = C:\Originales\MiApp.exe        (exe D6 de referencia)
APP_1_DPR               = src\MiApp.dpr
DIR_ORIGINALES          = C:\Originales                  (fuentes D6 congeladas)
DIR_TRABAJO             = C:\Proyectos\MiApp             (repo migrado)
INI_ALIAS               = C:\...\Alies.ini               (alias→ruta BD originales)
FRAMEWORK_PROPIO        = MiFramework_D13\               (componentes internos)
MAQUINA_IDE             = la que compila (remota/otra)
```

### Valores reales — proyecto Evolutivos (Guttmann)

```text
APP_1_EXE_ORIGINAL      = C:\Proyectos\GuttmannD6\AdmissioD6.exe   (D6 ago-2026, CON evolutivos)
APP_2_EXE_ORIGINAL      = C:\Proyectos\GuttmannD6\CursClinD6.exe   (D6 ago-2026, CON evolutivos)
EXE_D6_ANTIGUOS         = C:\tempexes\Admissio.exe   (build 2022 — PRE-evolutivos)
                          C:\tempexes\CursClin.exe   (build sep-2026)
EXE_MIGRADOS            = C:\tempexes\AdmissioD13.exe    (referencia ya migrada)
                          C:\tempexes\CursClinD13.exe
DIR_ORIGINALES          = C:\Proyectos\Evolutivos Originales   (entrega D6 congelada del cliente)
DIR_ORIGINALES_FULL     = C:\Proyectos\Originales        (árbol D6 completo — contexto de units/Data)
DIR_TRABAJO             = C:\Proyectos\Guttmann\Evolutivos     (ÚNICO directorio modificable)
REF_MIGRADA             = C:\Proyectos\Guttmann\cursProd (proyecto migrado D13 — referencia
                                                          de patrones, conexiones, datamodules)
INI_ALIAS               = C:\tempexes\AliesIB.ini
FRAMEWORK_PROPIO        = cursProd\HaleyVCL_D12          (migrado a D12; recompilado para D13 en el IDE)
MAQUINA_IDE             = remota — esta máquina NO compila
```

Notas específicas de este proyecto (migración de evolutivos, no de app completa):

- Los evolutivos son **entregas parciales por fichero**: algunas units llegan solo
  con `.pas`, otras solo con `.dfm` (ej. `FitxaAmbulancies.dfm` sin `.pas`;
  `FitxaBloqueigLlits.pas` sin `.dfm`). Migrar solo lo entregado.
- **Dos tipos de tarea**:
  - **Units de Admissions** (24 ficheros `.pas`/`.dfm`) — existe counterpart
    migrado en `REF_MIGRADA` (cursProd fue migrado de una base D6
    **pre-evolutivo**). El diff evolutivo-D6 ↔ migrado-D13 mezcla cambios del
    cliente + transformaciones de migración: identificar cada hunk con el
    catálogo de patrones y aplicar la parte evolutiva ya migrada.
  - **Módulos sin counterpart** (`ClausPas`, `Codifica`, `CodisICD`,
    `agenda paciente` — 10 units): migración completa desde cero. No hay `.dpr`
    entregados ni exes en tempexes → decidir con el usuario si son apps
    standalone (crear `.dpr` nuevo) o units de las apps existentes.
- `DIR_ORIGINALES` y `DIR_ORIGINALES_FULL` contienen los evolutivos
  **idénticos** (byte a byte): el árbol `Originales` ya incorpora el trabajo
  del cliente. La base D6 **pre-evolutivo** no existe como ficheros — queda
  implícita en la versión migrada de cursProd (su git history es la pista
  cronológica: migración jun–jul 2026, evolutivos oct 2026).
- `Data/` en DIR_TRABAJO está **vacío**: los datamodules que usan los
  evolutivos (`wData.IBGuttmann`, `wDataAdmisio.*`, `wDataImatges.Gdb`,
  `wDataHola.*`) viven migrados en `cursProd\Data`. Las referencias
  `Connection = wData.IBGuttmann` del DFM migrado se resolverán al integrar las
  units en el proyecto destino.
- Alias detectados en los DFMs evolutivos (mapa real en
  `scripts/alias-map.evolutivos.csv`):
  - `Interna`/`interna` → `wData.IBGuttmann` (conexión principal)
  - `InternaHola` → `wDataHola.baseHola`
  - `Database = wData.IBGuttmann` / `wDataImatges.Gdb` (IBX, referencia directa)
  - `'C:\DELPHI\PROJECTES\CODISICD'`, `'G:\BIN\CODISICD'` → **Halcyon/DBF**:
    sin equivalente FireDAC — decisión arquitectónica aparte (CodisICD)
  - `proves2:e:\dades\guttmanndev.gdb` → path BDE crudo en Codifica/Data.dfm —
    revisar con el usuario
- Inventario de datasets en evolutivos: 55×`TQuery`, 6×`TIBQuery`,
  2×`TIBDataSet`, 1×`TMemoryTable`, `ThySqlTable` (Haley), 5×`THalcyonDataSet`
  (CodisICD). También: QuickReport, JVCL, TaskBar, rxMemTable.
- Los `.dfm` evolutivos están en **formato texto** (parseables por los scripts).

Checklist de inventario:

- [ ] Árbol completo de **fuentes originales D6** (`.pas`, `.dfm`, `.dpr`,
      `.ini` de alias). Si falta una unit, anotarla como "sin original" — no
      inventar.
- [ ] **Exe D6 funcionando** contra la BD de prueba (referencia visual y de
      comportamiento).
- [ ] Mapa de **alias de BD originales** (leer `.ini` + DFM originales):
      `DatabaseName = 'Alias'` (BDE/TQuery) y `Database = wX.Gdb` (IBX/TIBQuery).
- [ ] **Datamodules y orden de creación** en el `.dpr` (un `Connection =
      wData.X` en DFM exige que `wData` se cree antes y la unit esté en uses).
- [ ] Tecnologías no-FireDAC presentes: Halcyon/DBF, BDE `TTable` con paths,
      QuickReport, OLE/Word, componentes de terceros (JVCL, EhLib…).

## Roles de máquinas

| Máquina | Puede |
|---|---|
| Análisis (agente IA) | Leer/editar `.pas`/`.dfm`, escaneos estáticos, diffs contra originales. **Nunca compila.** |
| IDE | Compilar (Build All), depurar con breakpoints, comparar con exe D6. |

## Fase 1 — Framework y terceros

1. Migrar/compilar el framework propio para el IDE destino (ej. `HaleyVCL_D12`
   → recompilar para D13). Los `.dcu`/`.bpl` **no son portables** entre D12/D13.
2. Recompilar/instalar JVCL, EhLib y cualquier paquete de terceros.
3. Abrir el `.dproj` una vez; revisar el diff que el IDE escribe antes de
   commitear.
4. Aplicar fixes estructurales del framework conocidos
   (`02-KNOWN-PATTERNS.md` §12: `ConnectionName` resetea `Connection` en
   `THYSql.Open`, etc.).

## Fase 2 — Conexiones (auditoría de queries)

Objetivo: ningún `TFDQuery`/dataset vivo sin conexión efectiva.

1. **Escanear** los `.dfm` migrados: datasets sin `Connection`/`ConnectionName`
   → `scripts/scan-orphan-connections.ps1`.
2. **Para cada huérfano, buscar el `.dfm` original D6** y leer su
   `DatabaseName`/`Database` → tabla alias→conexión autoritativa
   → `scripts/map-original-dfm-db.ps1`.
3. **Verificar asignación programática** antes de tocar el DFM: buscar en el
   `.pas` `Comp.Connection :=`, `with Comp do Connection`, bucles
   `Components[i] is TFDQuery`, `ConnectionName`, `DatabaseName`. Si ya se
   asigna en código → no tocar.
4. **Clasificar uso**: `Open`/`ExecSQL`/`ParamByName`/`FieldByName`/
   `DataSource`/referencias externas (`wX.qY` desde otra unit) → viva vs.
   componente muerto (declarado, nunca usado). Los muertos se dejan sin
   conexión (minimiza diff) — documentarlos.
5. Aplicar `Connection = <componente>` en el DFM solo a las vivas.
6. **Separar lo que no es FireDAC**: tablas DBF/Halcyon con `DatabaseName`
   apuntando a paths — decisión arquitectónica aparte, nunca `Connection =`.

## Fase 3 — Componentes perdidos en el DFM

Síntoma: `AV read 0x00000000` en `TDataSet.Open`/uso de cualquier campo de
componente. En la migración, objetos con clases inexistentes (ej.
`TTFDMemTable` Haley) desaparecen del DFM pero el `.pas` sigue declarándolos.

1. `scripts/scan-missing-components.ps1` — campos declarados en `.pas` sin
   `object` en `.dfm`, filtrando falsos positivos (parámetros, locales).
2. Para cada huérfano usado en código: restaurar desde el `.dfm` original D6
   (campos persistentes, `OnFilterRecord`, `DataSource.DataSet`), omitiendo
   propiedades de clases ya inexistentes.
3. Si el original reestructuró la jerarquía (duplicados migrados) →
   reconciliar a mano o escalar al usuario; **no inventar estructura**.
4. Si no hay original → reportar; crear solo lo mínimo si el usuario lo aprueba.

## Fase 4 — Paridad visual con el exe D6

Comparar form a form contra el exe original. Patrones en §7–§8 de
`02-KNOWN-PATTERNS.md`: `ParentBackground`, `TDBGrid.DrawingStyle=gdsClassic`,
`TitleFont`/`FooterFont` EhLib, `ExplicitLeft`, `TStaticText`→`TPanel`,
overlapping captions, `FetchOptions.Mode=fmAll`.

## Fase 5 — Estabilización runtime

Trabajar el catálogo `02-KNOWN-PATTERNS.md` por síntoma. Metodología de
depuración (en la máquina IDE): breakpoints, y si el IDE reporta línea
incorrecta por AV, checkpoints `ShowMessage('CP-N')` — **eliminarlos antes de
commit**.

## Fase 6 — Validación

Matriz en `04-VALIDATION.md`: cada flujo corregido se verifica contra el exe
D6 con la misma BD. Un aviso que aparece en ambos es comportamiento heredado,
no bug.

## Fase 7 — Entrega

- Informe de pendientes explícito (lo que queda sin resolver y por qué).
- `.dcu` limpios, sin backups sueltos, sin checkpoints.
- Commit solo con autorización.
