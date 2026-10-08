# scan-orphan-connections.ps1 — Lista datasets FireDAC en .dfm sin
# Connection ni ConnectionName (candidatos a -512).
# Uso: .\scan-orphan-connections.ps1 [-Root <dir>]
param([string]$Root = (Resolve-Path "$PSScriptRoot\..\..\..").Path)

$enc = [Text.Encoding]::GetEncoding(1252)
$datasetClasses = 'TFDQuery|TFDTable|TFDStoredProc|TFDMemTable|THYSql|ThySqlTable|THYSqlQuery|THYSqlBrowse'

Get-ChildItem -Path $Root -Recurse -Filter "*.dfm" -File |
  Where-Object { $_.FullName -notmatch '__history|_backup|_original' } |
  ForEach-Object {
    $dfm = $_.FullName
    $lines = [IO.File]::ReadAllLines($dfm, $enc)
    $obj = $null
    for ($i = 0; $i -lt $lines.Length; $i++) {
      if ($lines[$i] -match "^\s*object\s+(\w+)\s*:\s*($datasetClasses)\s*$") {
        $obj = $Matches[1]
      }
      elseif ($obj -and $lines[$i] -match '^\s*end\s*$') {
        $obj = $null
      }
      elseif ($obj) {
        $block = ''
      }
      if ($obj) {
        # recoger el bloque completo del objeto
        $j = $i
        $depth = 0
        $hasConn = $false
        while ($j -lt $lines.Length) {
          $l = $lines[$j]
          if ($l -match '^\s*(object|inherited|inline)\b') { $depth++ }
          if ($l -match 'Connection(Name)?\s*=') { $hasConn = $true }
          if ($l -match '^\s*end\s*$') {
            $depth--
            if ($depth -le 0) { break }
          }
          $j++
        }
        if (-not $hasConn) { Write-Output "$dfm`t$obj" }
        $obj = $null
        $i = $j
      }
    }
  }
