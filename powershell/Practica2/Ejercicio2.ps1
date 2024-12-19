[INT]$valor1 = Read-Host "Introduzca el primer numero"
[INT]$valor2 = Read-Host "Introduzca el segundo numero"

$suma = $valor1 + $valor2
$resta = $valor1 - $valor2
$multi = $valor1 * $valor2
$div = $valor1 / $valor2

Write-Host "`nRESULTADOS`n"
Write-Host "La suma de los dos numeros es" $suma
Write-Host "La resta de los dos numeros es" $resta
Write-Host "La multiplicacion de los dos numeros es" $multi
Write-Host "La division de los dos numeros es" $div