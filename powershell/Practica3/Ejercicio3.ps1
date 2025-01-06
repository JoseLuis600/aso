[int]$valor1 = Read-Host "Escriba el primer numero"
[int]$valor2 = Read-Host "Escriba el segundo numero"

if ($valor1 -gt $valor2) {
    Write-Host "El numero $valor1 es mayor que $valor2"
} elseif ($valor1 -lt $valor2) {
    Write-Host "El numero $valor1 es menor que $valor2"
} else {
    Write-Host "Ambos numeros son iguales"
}