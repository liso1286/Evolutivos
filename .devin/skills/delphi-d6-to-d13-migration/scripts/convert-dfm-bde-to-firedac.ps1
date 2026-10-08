# convert-dfm-bde-to-firedac.ps1 — Conversión mecánica de DFM D6 (BDE/IBX)
# a FireDAC. Byte-safe Windows-1252. Crea .bak por fichero.
#
# Uso:
#   .\convert-dfm-bde-to-firedac.ps1 -DfmPath <file|dir> -MapFile .\alias-map.csv [-ReportOnly]
#
# alias-map.csv formato (sin cabecera):   alias,connectionExpr
#   Interna,wData.IBGuttmann
#   InternaRecerca,wDataRecerca.GdbRecerca
#   internafotos,wDataImatges.Gdb
# Para generar una definición ConnectionName en vez de componente:  alias,def:MiAlias
param(
  [Parameter(Mandatory)][string]$DfmPath,
  [Parameter(Mandatory)][string]$MapFile,
  [switch]$Recurse,
  [switch]$ReportOnly
)

$enc = [Text.Encoding]::GetEncoding(1252)

# --- mapa alias -> destino ---
$aliasMap = @{}
Get-Content $MapFile -Encoding Default | ForEach-Object {
  if ($_ -match '^\s*([^,]+),(.*)$') { $aliasMap[$Matches[1].Trim().ToLower()] = $Matches[2].Trim() }
}

# --- conversiones de clase ---
$classMap = @{
  'TQuery'        = 'TFDQuery'
  'TTable'        = 'TFDTable'
  'TStoredProc'   = 'TFDStoredProc'
  'TIBQuery'      = 'TFDQuery'
  'TIBSQL'        = 'TFDQuery'
  'TIBDataSet'    = 'TFDQuery'
  'TIBStoredProc' = 'TFDStoredProc'
  'TIBDatabase'   = 'TFDConnection'
  'TDatabase'     = 'TFDConnection'
  'TIBTransaction'= 'TFDTransaction'
  'TUpdateSQL'    = 'TFDUpdateSQL'
  'TMemoryTable'  = 'TFDMemTable'
  'TTFDMemTable'  = 'TFDMemTable'
  'TBatchMove'    = 'TFDBatchMove'
}

# propiedades BDE/IBX que se eliminan en datasets
$dropProps = 'SessionName|ParamCheck|UniDirectional|RequestLive'

# clases sin equivalente: solo se reportan
$noEquiv = 'THalcyonDataSet|THalcyonDataset|ThySqlTable|THYDataBase'

$files = if ((Get-Item $DfmPath).PSIsContainer) {
  Get-ChildItem $DfmPath -Recurse:$Recurse -Filter *.dfm -File
} else { Get-Item $DfmPath }

foreach ($f in $files) {
  $lines = [System.Collections.Generic.List[string]]::new()
  [IO.File]::ReadAllLines($f.FullName, $enc) | ForEach-Object { $lines.Add($_) }

  $changed = $false
  $i = 0
  while ($i -lt $lines.Count) {
    $line = $lines[$i]

    # --- conversión de clase en la línea 'object' ---
    if ($line -match '^(\s*(object|inherited|inline)\s+\w+\s*:\s*)(\w+)(.*)$') {
      $cls = $Matches[3]
      if ($noEquiv -match "(^|\|)$([regex]::Escape($cls))(\||$)" -or $cls -match $noEquiv) {
        Write-Host ("NOEQ`t{0}`t{1}" -f $f.Name, $cls)
      }
      if ($classMap.ContainsKey($cls)) {
        $lines[$i] = $Matches[1] + $classMap[$cls] + $Matches[4]
        Write-Host ("CLASS`t{0}`t{1} -> {2}" -f $f.Name, $cls, $classMap[$cls])
        $changed = $true
      }
    }

    # --- DatabaseName = 'Alias'  ->  Connection / ConnectionName ---
    elseif ($line -match "^(\s*)DatabaseName\s*=\s*'([^']*)'") {
      $indent = $Matches[1]; $alias = $Matches[2]
      $key = $alias.ToLower()
      if ($aliasMap.ContainsKey($key)) {
        $dest = $aliasMap[$key]
        if ($dest -like 'def:*') {
          $lines[$i] = "$indent" + "ConnectionName = '" + $dest.Substring(4) + "'"
        } else {
          $lines[$i] = "$indent" + "Connection = $dest"
        }
        Write-Host ("ALIAS`t{0}`t{1} -> {2}" -f $f.Name, $alias, $dest)
      } else {
        Write-Host ("NOMAP`t{0}`tDatabaseName='{1}'" -f $f.Name, $alias)
      }
      $changed = $true
    }

    # --- Database = wX.Gdb (IBX) -> Connection = wX.Gdb ---
    elseif ($line -match '^(\s*)Database\s*=\s*([\w.]+)\s*$') {
      $lines[$i] = $Matches[1] + 'Connection = ' + $Matches[2]
      Write-Host ("ALIAS`t{0}`t{1} -> (directa)" -f $f.Name, $Matches[2])
      $changed = $true
    }

    # --- propiedades a eliminar ---
    elseif ($line -match "^\s*($dropProps)\s*=") {
      Write-Host ("DROP`t{0}`t{1}" -f $f.Name, $line.Trim())
      $lines.RemoveAt($i); $i--; $changed = $true
    }

    # --- AliasName en TDatabase: reportar (Params van a BeforeConnect/ini) ---
    elseif ($line -match '^\s*AliasName\s*=') {
      Write-Host ("REVIEW`t{0}`t{1}" -f $f.Name, $line.Trim())
    }

    $i++
  }

  if ($changed -and -not $ReportOnly) {
    [IO.File]::WriteAllBytes("$($f.FullName).bak", [IO.File]::ReadAllBytes($f.FullName))
    [IO.File]::WriteAllLines($f.FullName, $lines, $enc)
  }
}
Write-Host ('--- fin. ReportOnly=' + $ReportOnly)
