$ErrorActionPreference = 'Stop'

$port = 8000
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$htmlFile = 'diapason-guitarra.html'

Write-Host ''
Write-Host 'Servidor local para celular' -ForegroundColor Yellow
Write-Host "Carpeta: $root"
Write-Host "Archivo:  $htmlFile"
Write-Host ''

$ips = Get-NetIPAddress -AddressFamily IPv4 |
  Where-Object {
    $_.IPAddress -notlike '169.254.*' -and
    $_.IPAddress -ne '127.0.0.1' -and
    $_.InterfaceAlias -notmatch 'Loopback|vEthernet|WSL|Bluetooth|Hyper-V|Virtual'
  } |
  Select-Object -ExpandProperty IPAddress -Unique

if (-not $ips) {
  Write-Host 'No encontre una IP local util para compartir con el celular.' -ForegroundColor Red
  Write-Host 'Conectate a Wi-Fi y vuelve a ejecutar este script.'
  exit 1
}

Write-Host 'Abre una de estas URLs en Safari del iPhone:' -ForegroundColor Green
foreach ($ip in $ips) {
  Write-Host "  http://$ip`:$port/$htmlFile" -ForegroundColor Cyan
}

Write-Host ''
Write-Host 'Importante:' -ForegroundColor Yellow
Write-Host '  1. La compu y el iPhone deben estar en la misma red Wi-Fi.'
Write-Host '  2. Si Windows pregunta por el firewall, permite acceso en red privada.'
Write-Host '  3. Deja esta ventana abierta mientras uses la app.'
Write-Host ''
Write-Host 'Iniciando servidor...' -ForegroundColor Yellow
Write-Host ''

Set-Location $root
python -m http.server $port --bind 0.0.0.0
