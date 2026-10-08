# clean-dcu.ps1 — Borra todos los .dcu del árbol (obligatorio tras cada cambio
# de fuentes y antes de cualquier Build All en la máquina IDE).
# Uso: .\clean-dcu.ps1 [-Root C:\Proyectos\MiApp]
param([string]$Root = (Resolve-Path "$PSScriptRoot\..\..\..").Path)

$dcu = Get-ChildItem -Path $Root -Recurse -Filter "*.dcu" -File -ErrorAction SilentlyContinue
$count = ($dcu | Measure-Object).Count
$dcu | Remove-Item -Force
$rest = (Get-ChildItem -Path $Root -Recurse -Filter "*.dcu" -File -ErrorAction SilentlyContinue | Measure-Object).Count
Write-Host "dcu borrados: $count | restantes: $rest"
