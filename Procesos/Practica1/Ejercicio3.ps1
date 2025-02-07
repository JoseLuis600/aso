Write-Host "Script para detener procesos"
$consulta = Read-Host "Escriba el usuario: "

$encontrar = Get-Process -IncludeUserName | Where UserName -eq "ASO\$consulta"

if ($encontrar) {
    foreach ($enc in $encontrar) {
        Stop-Process -Id $enc.Id -Force
    }
    Write-host "Procesos eliminados"
} else {
    Write-Host "No se encontraron procesos"
}