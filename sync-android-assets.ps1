$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$source = Join-Path $root 'diapason-guitarra.html'
$targetDir = Join-Path $root 'android-app\app\src\main\assets'
$target = Join-Path $targetDir 'diapason-guitarra.html'

if (-not (Test-Path $source)) {
  Write-Host "No se encontro el archivo fuente: $source" -ForegroundColor Red
  exit 1
}

New-Item -ItemType Directory -Force -Path $targetDir | Out-Null
Copy-Item -Path $source -Destination $target -Force

Write-Host "HTML sincronizado hacia Android:" -ForegroundColor Green
Write-Host "  $target"
