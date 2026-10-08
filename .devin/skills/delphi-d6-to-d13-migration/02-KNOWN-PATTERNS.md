# 02 — Catálogo de patrones: síntoma → causa → fix

Catálogo completo de defectos encontrados en la migración Guttmann
(BDE/IBX + HaleyVCL → FireDAC, D6→D12/D13). Aplicable a cualquier migración
equivalente.

---

## §1. `EFDException -512: Connection is not defined for [<query>]`

**Causa**: `TQuery`(BDE) → `TFDQuery` perdió la conexión: BDE usaba
`DatabaseName='Alias'`; FireDAC necesita `Connection = <TFDConnection>` o
`ConnectionName` resoluble en `FDConnectionDefs`.

**Fix**: `Connection = wData.IBGuttmann` (o el `TFDConnection` que mapee el
alias original) en el DFM, en la misma posición que en el original.
Verificar antes que el `.pas` no la asigne por código y que la unit del
datamodule esté en `uses` (si no, la referencia del DFM falla al cargar).

**Mapeo**: leer `DatabaseName`/`Database` del `.dfm` original D6:
`'Interna'` → conexión principal; `Database = wX.Gdb` (IBX) → ese componente
→ el `TFDConnection` equivalente.

## §2. `[FireDAC][Phys][IB]-338: Param type changed`

**Causa**: FireDAC infiere `DataType` del parámetro en el primer `Open`. Si
después se usa otro `AsXXX`, el prepared statement falla.

**Fix**: `DataType = ftXxx` explícito en `ParamData` del DFM + `AsXXX`
consistente en el `.pas`. Regla: campos INTEGER siempre `ftInteger` +
`AsInteger := StrToInt(...)`.

## §3. `AV ($C0000005) read of address 0x00000000` en `TDataSet.Open`/uso de componente

**Causa**: campo de componente declarado en el `.pas` pero **sin `object` en
el `.dfm`** — en la migración se perdió (típico: clase Haley que ya no existe,
ej. `TTFDMemTable`).

**Diagnóstico**: `scan-missing-components.ps1`; confirmar uso real
(`Open`, `FieldByName`, `Post`, `Filtered`, `DataSource`).

**Fix**: restaurar el objeto desde el `.dfm` original D6 con la clase
equivalente actual (ej. `TTFDMemTable` → `TFDMemTable`), sus campos
persistentes y handlers; omitir propiedades exclusivas de la clase vieja
(`AutoSort`, `PersistentSave*`, `DoBinaryLocate`, `Version`). Restaurar el
`DataSource.DataSet` asociado. Si el original reorganizó la jerarquía y hay
duplicados → reconciliar o escalar (no inventar).

## §4. `EVariantTypeCastError: Could not convert variant of type (Null) into type (OleStr)`

**Causa**: funciones tipo `GutSelect`/`SelectSQL` devuelven `Null` para
campos `ftWideString`/`ftFixedChar`/`ftFixedWideChar`/`ftWideMemo` (FireDAC
usa estos tipos para VARCHAR/CHAR Unicode; el fallback antiguo no los cubría).

**Fix**: añadir esos tipos al `case` de fallback de las funciones de acceso,
o `VarToStr(...)` en el punto de uso.

## §5. `[FireDAC][Comp][DS]-200 Bookmark is not found` / AV al navegar

**Causa**: BDE devolvía bookmark como puntero → código hacía
`field.Tag := Integer(ds.GetBookmark)` / `GotoBookmark(TBookmark(tag))`.
En FireDAC `TBookmark` es `TBytes` — el cast guarda basura.

**Fix**: lista paralela `FBookmarks: TList<TBookmark>` (`System.Generics.
Collections`): `FBookmarks.Add(ds.GetBookmark); field.Tag := Count-1;` y
`GotoBookmark(FBookmarks[field.Tag])`. Liberar en `FormClose`/`Destroy`.

## §6. Grid vacío o con solo ~50 filas

**Causa A**: `TDataSource` perdió `DataSet` al renombrarse el componente →
grid sin filas ni columnas. Restaurar `DataSet = <nombre>` en DFM.

**Causa B**: FireDAC `fmOnDemand`+RowsetSize 50 (BDE traía todo). Fix:
`FetchOptions.Mode = fmAll` en el DFM del query.

## §7. Colores/layout ignorados (paridad visual D6)

- **`ParentBackground`** (default True con temas): los paneles ignoran su
  `Color`. Fix: `ParentBackground = False` en DFM; en algunos casos forzar
  `Color :=` también en runtime.
- **`TDBGrid.DrawingStyle`**: default `gdsThemed` dibuja filas más estrechas.
  Fix: `DrawingStyle = gdsClassic`.
- **`TLabel.Transparent`** + `TPanel.Caption` → textos superpuestos. Quitar
  el `Caption` del panel.
- **`TStaticText`** ignora `Color` con temas → sustituir por `TPanel`
  (`BevelOuter=bvNone`, `Ctl3D=False`, `ParentBackground=False`).
- **EhLib**: `FooterColor`→`FooterParams.Color`, `TitleHeight`→
  `TitleParams.RowHeight`, `TitleLines`→`TitleParams.RowLines`; restaurar
  `TitleFont`/`FooterFont`; eliminar propiedades auto-generadas que alteran
  (`GridLineParams.VertEmptySpaceStyle`, `IndicatorOptions`, `RowDetail*`,
  `dghColumnResize/Move`, `ExplicitLeft` en controles anclados).

## §8. Componentes de terceros borrados silenciosamente

Si el IDE guarda un `.dfm` con `TJv*` (u otro paquete) **sin el paquete
instalado**, elimina los objetos sin avisar → AV en runtime. Regla: nunca
abrir/guardar esos DFMs sin los paquetes instalados; mantener backup.

## §9. Corrupción de encoding (`EF BF BD`, acentos perdidos)

**Causa**: herramientas de edición que reescriben el `.pas`/`.dfm` a UTF-8
convierten cada byte 1252 acentuado en el carácter de reemplazo U+FFFD
(`EF BF BD`) — pérdida irreversible.

**Prevención**: editar siempre byte-safe con cp1252 (`scripts/edit-1252.ps1`).

**Detección**: `check-encoding.ps1` — busca bytes `EF BF BD` y valida BOM.

**Reparación** (archivos con triple codificación): decodificar tres veces
UTF-8→ISO-8859-1 (ver AGENTS.md del proyecto origen). Si los acentos ya son
U+FFFD, restaurar desde git/backup y re-aplicar el cambio byte-safe.

## §10. `dcc32 Fatal Error F2084 Internal Error`

**No es un error de código** — es crash del compilador. Orden:

1. Borrar TODOS los `.dcu` del árbol (`clean-dcu.ps1`).
2. Reabrir proyecto → **Build All**.
3. Si persiste: paquetes de terceros compilados para otra versión de Delphi —
   reconstruirlos.
4. Solo entonces mirar el fuente.

## §11. `EInvalidOperation: Cannot focus a disabled or invisible window`

**Causa**: VCL D12+ — al ocultar un panel que contiene el control con foco
(típico tras Post+refresh), Windows falla al restaurar el foco. El dato ya
está guardado.

**Fix**: filtrarla en `Application.OnException` (`E is EInvalidOperation` y
mensaje coincide → `Exit`). Bajo debugger la excepción se ve igualmente antes
del handler — no es fallo. Opcional: reasignar `ActiveControl` antes de
ocultar el panel.

## §12. Framework Haley: `Connection` vs `ConnectionName`

- `ConnectionName` busca en `FDConnectionDefs`, no componentes → `-340 Driver
  ID is not defined` y **resetea `Connection` a nil**.
- Componentes Haley (`THYSql`, `ThySqlTable`, `THYSqlBrowse`, `THYSqlQuery`):
  **no** poner `Connection`/`ConnectionName` en DFM si el `TFDConnection`
  está en otro datamodule — asignar en runtime con loop `Components[i] is
  THYSql` en `FormCreate`.
- Fix obligatorio en `HYSql.pas`: `THYSql.Open` debe ser
  `if EsVuit(ConnectionName) and not Assigned(Connection) then` — si no,
  pisa la conexión asignada.
- `TFDQuery` internos del framework: `Q.Connection := Self.Connection` en
  `Open`/`PonerSql`/`CrearCalculats`/delete; fallback `FindConnectionByName`.
- `Projecto` es propiedad de `TDic`, no de `THYSql` — ponerla en un `THYSql`
  da "Property does not exist" al cargar el DFM. Los `TDic` sí necesitan
  `Projecto = wData.Projecte` (sin él: AV en `SetAbierta`).

## §13. Handler global de excepciones y diálogo corporativo

En D6 un `Application.OnException` propio mostraba el diálogo de error
corporativo (Haley: fondo amarillo). Si el código migrado instala otro
handler (`AppException`, `MessageDlg`), los `FerError` salen en ventana
estándar. **Fix**: delegar en el handler original
(`wData.TrazaErrores(Sender, E)`), conservando los filtros añadidos (§11)
y los extras propios (log, reporte a IT).

`Application.ShowException` pasa por `OnException` — los `FerError` sin
raise también terminan en el diálogo correcto.

## §14. APIs rotas D6→D12+

- `BoolToStr(Bool, UseBoolStrs)` no compila → `if/else` u `Ord()`.
- `FormatDateTime('dddd',…)` usa `FormatSettings.LongDayNames`, no las
  variables sueltas → asignar `FormatSettings.LongDayNames[...]`.
- `TMemoField` en grid muestra `(Memo)` → `OnGetText: Text := Sender.AsString`.
- `CopyDataSet(q, [coStructure, coRestart])` en `TFDMemTable` no copia filas
  → bucle `Append`/`CopyFields`/`Post` manual.
- CHAR(n) devuelve padding → `Trim(Field.AsString)` antes de comparar.
- `THYConsulta.ExecuteFind` exige `Dicionario1` (aunque solo se use
  `Dicionario2`) → asignar `Dicionario1 = <mismo>` en DFM.
- Inline `var` en `begin` puede dar problemas → declaración clásica.

## §15. Falsa alarma: paneles/aviso que "aparecen por primera vez"

Los checks de arranque del `.dpr` (avisos tipo "hay X pendientes") solo se
veían si la query funcionaba. Al restaurar conexiones pueden empezar a
mostrarse → **es comportamiento original recuperado**, no regresión.
Verificar contra el exe D6 antes de tocar nada.
