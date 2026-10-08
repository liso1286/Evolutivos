# scan-missing-components.ps1 — Campos de componente declarados en la clase
# del .pas sin 'object' correspondiente en el .dfm (AV latentes en runtime).
# Uso: .\scan-missing-components.ps1 [-Root <dir>]
param([string]$Root = (Resolve-Path "$PSScriptRoot\..\..\..").Path)

$enc = [Text.Encoding]::GetEncoding(1252)
# tipos de componente serializables típicos (ampliar según framework)
$classRx = ':\s*T\w+\s*;'

Get-ChildItem -Path $Root -Recurse -Filter "*.dfm" -File |
  Where-Object { $_.FullName -notmatch '__history|_backup|_original' } |
  ForEach-Object {
    $dfm = $_.FullName
    $pas = [IO.Path]::ChangeExtension($dfm, '.pas')
    if (-not (Test-Path $pas)) { return }

    $dfmText = [IO.File]::ReadAllText($dfm, $enc)
    $pasLines = [IO.File]::ReadAllLines($pas, $enc)

    # campos de la clase del form (entre 'type' y 'private')
    $inClass = $false
    foreach ($line in $pasLines) {
      if ($line -match '^\s*(private|public|published|protected)\b') { $inClass = $false }
      if ($inClass -and $line -match '^\s*(\w+)\s*:\s*(T\w+)\s*;') {
        $name = $Matches[1]
        if ($dfmText -notmatch "(?m)^\s*object\s+$name\s*:") {
          # filtrar falsos positivos: parámetros/locales — el match ya exige
          # estar en la sección de campos de clase (antes del primer private)
          Write-Output "$dfm`t$($Matches[2])`t$name"
        }
      }
      if ($line -match '=\s*class\s*\(') { $inClass = $true }
    }
  }
