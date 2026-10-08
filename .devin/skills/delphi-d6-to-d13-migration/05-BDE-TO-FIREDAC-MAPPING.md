# 05 — Mapeo directo BDE/IBX → FireDAC

Cómo traducir mecánicamente los componentes y propiedades D6 a FireDAC.
El script `scripts/convert-dfm-bde-to-firedac.ps1` automatiza la parte de DFM;
esta tabla es la referencia para lo que hay que revisar a mano en `.pas`.

---

## 1. Mapeo de componentes (clase → clase)

| BDE/IBX/legacy | FireDAC | Notas |
|---|---|---|
| `TDatabase` | `TFDConnection` | Alias BDE → `Params`/`ConnectionName` (§3) |
| `TQuery` | `TFDQuery` | `DatabaseName` → `Connection`/`ConnectionName` |
| `TTable` | `TFDTable` | `TableName` igual; `IndexName`→`IndexName` |
| `TStoredProc` | `TFDStoredProc` | `StoredProcName` igual |
| `TIBDatabase` | `TFDConnection` | IBX: `Database` property → Params |
| `TIBTransaction` | `TFDTransaction` | enlazar a `TFDConnection.Transaction` |
| `TIBQuery` / `TIBSQL` | `TFDQuery` | `Database = wX.Gdb` → `Connection = wX.Gdb` |
| `TIBDataSet` | `TFDQuery` | SelectSQL/InsertSQL/… → `UpdateSQL`/`InsertSQL`… |
| `TIBStoredProc` | `TFDStoredProc` | |
| `TMemoryTable`/`TTFDMemTable` (Haley/3rd) | `TFDMemTable` | omitir props exclusivas (AutoSort, PersistentSave*) |
| `TBatchMove` | `TFDBatchMove` | semántica distinta — revisar a mano |
| `TUpdateSQL` | `TFDUpdateSQL` | enlazar a `Query.UpdateObject` |
| `TSession` | `TFDManager` | normalmente eliminar |
| `THalcyonDataSet`/`ThySqlTable`(DBF) | **sin equivalente** | decisión arquitectónica aparte |

## 2. Mapeo de propiedades

| D6/BDE | FireDAC | Acción |
|---|---|---|
| `DatabaseName = 'Alias'` | `ConnectionName = 'Alias'` o `Connection = wX.Y` | Alias del `.ini` → definición o componente |
| `Database = wX.Gdb` (IBX) | `Connection = wX.Gdb` | referencia directa, traducible 1:1 |
| `SessionName` | — | eliminar |
| `AliasName` (TDatabase) | `Params.DriverID`+`Database`+… | ver §3 |
| `RequestLive = True` | `UpdateOptions` / `UpdateObject` | revisar: en IB era live por defecto |
| `CachedUpdates` | `CachedUpdates` | mismo nombre |
| `UniDirectional` | `FetchOptions.Unidirectional` | |
| `ParamCheck` | `ResourceOptions.ParamCreate`/`ParamCheck` | |
| `Params` (BDE) | `ParamData` | tipos `ftXxx` — ver §4 |
| `SQL.Strings` | `SQL.Strings` | sin cambio salvo dialecto (§5) |
| `DataSource`/`DataSet` | igual | verificar que no se perdió el enlace |
| `FetchAll`/`RequestLive` | `FetchOptions.Mode = fmAll` | paridad de comportamiento |

## 3. Alias BDE → conexión FireDAC

El alias original se resuelve en dos pasos:

**a) Leer el alias del `.ini`/BDE Admin** — `scripts/map-original-dfm-db.ps1`
extrae de cada `.dfm` original qué alias usa cada dataset.

**b) Convertir el alias a conexión.** Dos estrategias:

| Estrategia | DFM | Cuándo |
|---|---|---|
| Componente | `Connection = wData.IBGuttmann` | El `TFDConnection` vive en un datamodule (recomendado — 1:1 con IBX `Database = wX.Gdb`) |
| Definición | `ConnectionName = 'MiAlias'` | Se registra en `FDManager.ConnectionDefs`/`.ini` |

Para `TDatabase`/`TIBDatabase` originales: el bloque de Params del alias
(driver, path, usuario) se convierte en `TFDConnection.Params`:

```dfm
object IBGuttmann: TFDConnection
  Params.Strings = (
    'DriverID=IB'
    'Database=G:\BD\miapp.gdb'
    'User_Name=SYSDBA'
    'Password=****'
    'CharacterSet=ISO8859_1')
  LoginPrompt = False
end
```

(o cargar `Params` en `BeforeConnect` desde el `.ini` — patrón usado en el
proyecto: la ruta real se lee de `AliesIB.ini` en runtime).

## 4. Params BDE → ParamData FireDAC

- Conservar `Name`, `ParamType = ptInput`.
- Añadir `DataType = ftXxx` explícito (FireDAC ya no infiere libremente —
  -338 si el primer uso usa otro `AsXXX`).
- Regla: campos INTEGER → `ftInteger` + `AsInteger := StrToInt(...)`.

## 5. Dialecto SQL (InterBase legacy)

- D6/IBX admitía literales con **comillas dobles** (`where ESTAT="N"`).
  FireDAC/Firebird moderno puede requerir comillas simples según
  `Dialect`/`QuotedIdentifiers` — verificar por query si falla `-104`.
- Funciones de fecha: `Cast("TODAY" as Date)` depende del dialecto —
  comprobar contra la BD real.
- `F_Modulo(...)` y UDFs externas deben existir en el servidor nuevo.

## 6. Lo que el conversor NO hace (manual)

- Traducción de SQL con dialecto/queries dinámicos en `.pas`.
- Lógica de `TTable`+índices → `TFDTable` (rendimiento: preferir `TFDQuery`).
- Cualquier componente sin equivalente (Halcyon/DBF, OLE wrappers).
- Orden de creación de datamodules en el `.dpr`.

## 7. Uso del conversor

```powershell
# 1) Generar mapa de alias (editar alias-map.csv con la conexión destino)
#    alias,connection        ej: Interna,wData.IBGuttmann

# 2) Vista previa (no escribe nada)
.\convert-dfm-bde-to-firedac.ps1 -DfmPath .\forms -AliasMap .\alias-map.csv -ReportOnly

# 3) Convertir (crea .bak junto a cada .dfm)
.\convert-dfm-bde-to-firedac.ps1 -DfmPath .\forms -AliasMap .\alias-map.csv
```

Salida: informe por objeto — clase original, alias encontrado, conexión
asignada, propiedades eliminadas, y lo que queda sin mapear (revisar a mano).
