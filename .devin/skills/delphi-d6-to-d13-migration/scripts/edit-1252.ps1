# edit-1252.ps1 — Edición byte-safe de .pas/.dfm en Windows-1252.
# NUNCA usar editores UTF-8 sobre estos ficheros: corrompen los acentos.
# Uso:
#   .\edit-1252.ps1 -File <path> -Old 'texto viejo' -New 'texto nuevo'
# Devuelve OK / NOT FOUND / NOT UNIQUE
param(
  [Parameter(Mandatory)][string]$File,
  [Parameter(Mandatory)][string]$Old,
  [Parameter(Mandatory)][string]$New
)

$enc = [Text.Encoding]::GetEncoding(1252)
$s = [IO.File]::ReadAllText($File, $enc)
$count = ([regex]::Matches($s, [regex]::Escape($Old))).Count
if ($count -eq 0) { Write-Host 'NOT FOUND'; exit 1 }
if ($count -gt 1) { Write-Host "NOT UNIQUE ($count)"; exit 2 }
[IO.File]::WriteAllText($File, $s.Replace($Old, $New), $enc)
Write-Host 'OK'
