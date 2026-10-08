# Migración Delphi 6 (BDE/IBX) → Delphi 12/13 (FireDAC)

Skill de migración y estabilización de aplicaciones Delphi legacy. Destilado del
proyecto real Guttmann (CursClinic + Admissions): ~300 forms, BDE→FireDAC,
framework propio (HaleyVCL), InterBase/Firebird.

**Portable**: copia esta carpeta entera a otro repo/agente y ajusta las rutas
de `00-WORKFLOW.md` §0.

## Cuándo usarla

- Migrar una app Delphi ≤7 con BDE/IBX/dbExpress a Delphi 11+ con FireDAC.
- Estabilizar una app ya migrada que presenta crashes `-512`, AVs, grids
  vacíos, diálogos incorrectos o pérdida de componentes.

## Estructura

| Archivo | Contenido |
|---|---|
| `00-WORKFLOW.md` | Fases del proyecto, orden de ejecución, roles de máquinas |
| `01-RULES.md` | Reglas duras y límites (qué NO hacer) |
| `02-KNOWN-PATTERNS.md` | Catálogo síntoma → causa → fix (todos los bugs encontrados) |
| `03-CHECKLISTS.md` | Checklists por fase y por form |
| `04-VALIDATION.md` | Matriz de validación y criterios de entrega |
| `05-BDE-TO-FIREDAC-MAPPING.md` | Conversión directa BDE/IBX→FireDAC: tabla clase→clase, propiedad→propiedad, alias→conexión, Params→ParamData, dialecto SQL |
| `scripts/` | Scripts PowerShell reutilizables (escaneos, encoding, limpieza, **conversor DFM**) |

Conversor: `scripts/convert-dfm-bde-to-firedac.ps1` + `alias-map.ejemplo.csv`
traducen los `.dfm` D6 (`TQuery`/`TIBQuery` → `TFDQuery`, `DatabaseName`/
`Database` → `Connection`, limpieza de props BDE) de forma byte-safe cp1252.

## Reglas de oro (resumen — detalle en 01-RULES.md)

1. **No alterar lógica de negocio.** Solo correcciones de migración.
2. **Los originales D6 mandan.** Antes de asignar nada (conexiones,
   propiedades, componentes), buscar el `.dfm`/`.pas` original. La inferencia
   heurística solo sirve para comparar, nunca para decidir sola.
3. **No compilar en la máquina de análisis.** Compila/depura solo la máquina
   del IDE. Aquí se edita por inspección estática.
4. **Limpiar `.dcu` tras cada cambio.** (`scripts/clean-dcu.ps1`)
5. **Windows-1252.** Los `.pas`/`.dfm` son ANSI-1252; la edición directa puede
   corromper acentos → editar con PowerShell byte-safe
   (`scripts/edit-1252.ps1`).
6. **No commitear sin autorización expresa.** Antes de commit: diff completo,
   cero `ShowMessage('CP-…')`, `.dcu` limpios.
7. **Una línea de evidencia por fix.** Cada corrección debe referenciar el
   original D6 o el comportamiento del exe original.

## Secuencia mínima

```
Fase 0  Inventario: originales D6, aliases, datamodules, dpr
Fase 1  Framework: migrar/recompilar librerías propias y de terceros
Fase 2  Conexiones: mapa alias-original → TFDConnection (scripts de escaneo)
Fase 3  Componentes: campos .pas sin objeto .dfm (AV latentes)
Fase 4  Paridad visual: ParentBackground, DrawingStyle, fuentes, encoding
Fase 5  Runtime: crashes -512/-338/bookmarks/Null/foco/AV según catálogo
Fase 6  Validación contra exe original D6 (comparación lado a lado)
Fase 7  Entrega: informe de pendientes + limpieza
```

Cada fase tiene checklist en `03-CHECKLISTS.md` y criterios de salida en
`04-VALIDATION.md`.

## Errores de parada conocidos

| Error | Ir a |
|---|---|
| `[FireDAC]-512 Connection is not defined` | PATTERNS §1 |
| `[FireDAC]-338 Param type changed` | PATTERNS §2 |
| `AV read 0x00000000` en `TDataSet.Open` | PATTERNS §3 (componente perdido en .dfm) |
| `EVariantTypeCastError Null → OleStr` | PATTERNS §4 |
| `Bookmark is not found` | PATTERNS §5 |
| `F2084 Internal Error` del compilador | PATTERNS §10 (no es tu código) |
| `Cannot focus a disabled or invisible window` | PATTERNS §11 |
| Grid con 50 filas / vacío | PATTERNS §6 |
| Paneles con color ignorado | PATTERNS §7 |
| `EF BF BD` / acentos corruptos | PATTERNS §9 |
