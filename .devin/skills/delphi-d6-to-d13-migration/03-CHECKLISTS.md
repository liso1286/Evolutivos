# 03 — Checklists

## Por fase

### Fase 0 — Inventario
- [ ] Fuentes D6 completas y congeladas en `DIR_ORIGINALES`
- [ ] Exe D6 ejecutable contra BD de prueba
- [ ] Lista de alias originales → ruta/BD (del `.ini` + DFMs)
- [ ] `.dpr` revisado: datamodules, orden de creación, checks de arranque
- [ ] Tecnologías no-FireDAC inventariadas (DBF/Halcyon, OLE, QuickReport)
- [ ] Units sin original identificadas y anotadas

### Fase 1 — Framework
- [ ] Framework propio recompilado para la versión de Delphi destino
- [ ] JVCL/EhLib/terceros recompilados e instalados
- [ ] Fix `ConnectionName`→`Connection` en componentes base aplicado
- [ ] Diff del `.dproj` revisado tras abrirlo en el IDE nuevo

### Fase 2 — Conexiones
- [ ] Escaneo de datasets sin `Connection`/`ConnectionName` ejecutado
- [ ] Mapa alias→conexión construido **desde originales** (autoritativo)
- [ ] Asignaciones programáticas verificadas en cada `.pas` candidato
- [ ] Uso real verificado (vivas vs muertas) — muertas documentadas
- [ ] `Connection` aplicada solo a vivas
- [ ] DBF/Halcyon excluidas y reportadas aparte
- [ ] `.dcu` limpiados

### Fase 3 — Componentes
- [ ] Escaneo `.pas` sin `object` en `.dfm` ejecutado
- [ ] Falsos positivos filtrados (parámetros, variables locales)
- [ ] Restauraciones desde original verificadas (campos, handlers, DataSet)
- [ ] Colisiones de jerarquía documentadas/escaladas
- [ ] `.dcu` limpiados

### Fase 4 — Paridad visual
- [ ] `ParentBackground = False` donde el original tiene `Color`
- [ ] `DrawingStyle = gdsClassic` en `TDBGrid`
- [ ] `TitleFont`/`FooterFont` EhLib restauradas
- [ ] `FetchOptions.Mode = fmAll` donde el original traía todo
- [ ] `DataSource.DataSet` restaurados (grids vacíos)
- [ ] Capturas vs exe D6 revisadas form a form

### Fase 5 — Runtime
- [ ] Cada crash reproducido y clasificado por patrón (02-KNOWN-PATTERNS)
- [ ] Fix con evidencia del original
- [ ] Checkpoints de depuración eliminados
- [ ] `.dcu` limpiados

## Checklist por form (inspección)

- [ ] Cada `TFDQuery`/`TFDMemTable` tiene `Connection` efectiva (DFM o código)
- [ ] Cada `TDataSource` tiene `DataSet`
- [ ] Cada campo de componente del `.pas` tiene su `object` en el `.dfm`
- [ ] Cada `TDic` tiene `Projecto = wData.Projecte`
- [ ] Componentes Haley sin `Connection`/`Projecto` en DFM (runtime)
- [ ] `ParamData` con `DataType` explícito
- [ ] Sin bookmarks casteados a `Integer`
- [ ] `GutSelect` envuelto en `VarToStr` donde pueda ser Null
- [ ] Propiedades EhLib/JVCL conforme al original
- [ ] Encoding del fichero intacto (cero `EF BF BD`)

## Checklist pre-commit

- [ ] `git diff` completo revisado (sin ruido masivo de EOL/encoding)
- [ ] `grep "ShowMessage('CP-"` vacío
- [ ] `.dcu` limpiados
- [ ] Solo ficheros del alcance; sin informes/temporales personales
- [ ] Mensaje de commit explica el *porqué*
- [ ] Autorización expresa del usuario para commit/push
