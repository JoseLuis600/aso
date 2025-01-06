Write-Host "CALCULADORA"
Write-Host "1. Sumar"
Write-Host "2. Restar"
Write-Host "3. Multiplicar"
Write-Host "4. Dividir"
[int]$opcion = Read-Host "Elija una opcion (Escribir numero)"

switch ($opcion) {
    1 {
        [int]$valor1 = Read-Host "Escriba el primer numero"
        [int]$valor2 = Read-Host "Escriba el segundo numero"
        [int]$calculo = $valor1 + $valor2
        Write-Host "La suma de ambos numeros es $calculo"
    }
    2 {
        [int]$valor1 = Read-Host "Escriba el primer numero"
        [int]$valor2 = Read-Host "Escriba el segundo numero"
        [int]$calculo = $valor1 - $valor2
        Write-Host "La resta de ambos numeros es $calculo"
    }
    3 {
        [int]$valor1 = Read-Host "Escriba el primer numero"
        [int]$valor2 = Read-Host "Escriba el segundo numero"
        [int]$calculo = $valor1 * $valor2
        Write-Host "La multiplicacion de ambos numeros es $calculo"
    }
    4 {
        [int]$valor1 = Read-Host "Escriba el primer numero"
        [int]$valor2 = Read-Host "Escriba el segundo numero"
        [int]$calculo = $valor1 / $valor2
        Write-Host "La division de ambos numeros es $calculo"
    }
}