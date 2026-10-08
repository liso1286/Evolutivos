# map-original-dfm-db.ps1 — Extrae de los .dfm ORIGINALES D6 el
# DatabaseName/Database de cada dataset, para construir el mapa
# alias-original -> TFDConnection (autoritativo, no heurístico).
# Uso: .\map-original-dfm-db.ps1 -OriginalsDir C:\Originales
param([Parameter(Mandatory)][string]$OriginalsDir)

$enc = [Text.Encoding]::GetEncoding(1252)

Get-ChildItem -Path $OriginalsDir -Recurse -Filter "*.dfm" -File | ForEach-Object {
  $lines = [IO.File]::ReadAllLines($_.FullName, $enc)
  $obj = $null
  foreach ($line in $lines) {
    if ($line -match '^\s*object\s+(\w+)\s*:\s*(\w+)') { $obj = $Matches[1]; $cls = $Matches[2] }
    if ($obj -and $line -match '^\s*Database(Name)?\s*=\s*(.+)') {
      Write-Output ("{0}`t{1}`t{2}`t{3}" -f $_.Name, $obj, $cls, $Matches[2])
    }
  }
}
