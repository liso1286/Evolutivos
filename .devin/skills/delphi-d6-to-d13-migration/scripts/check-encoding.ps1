# check-encoding.ps1 — Detecta corrupción de encoding en .pas/.dfm:
# secuencias EF BF BD (U+FFFD), BOM, y bytes C3 (UTF-8 multibyte) en ficheros
# que deberían ser Windows-1252.
# Uso: .\check-encoding.ps1 <file|dir> [-Recurse]
param(
  [Parameter(Mandatory)][string]$Path,
  [switch]$Recurse
)

$files = if ((Get-Item $Path).PSIsContainer) {
  Get-ChildItem $Path -Recurse:$Recurse -Include *.pas,*.dfm -File
} else { Get-Item $Path }

foreach ($f in $files) {
  $b = [IO.File]::ReadAllBytes($f.FullName)
  $s = [Text.Encoding]::GetEncoding(28591).GetString($b)
  $fffd = [regex]::Matches($s, [char]0xEF + [char]0xBF + [char]0xBD).Count
  $c3 = ($b | Where-Object { $_ -eq 0xC3 }).Count
  $bom = ($b.Length -ge 3 -and $b[0] -eq 0xEF -and $b[1] -eq 0xBB -and $b[2] -eq 0xBF)
  if ($fffd -gt 0 -or $c3 -gt 0 -or $bom) {
    Write-Host ("{0}`tU+FFFD={1}`tC3={2}`tUTF8BOM={3}" -f $f.FullName, $fffd, $c3, $bom)
  }
}
