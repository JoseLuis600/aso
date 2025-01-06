[int]$valor = Read-Host "Ingrese un número"

if ($valor % 2 -eq 0) {
    Write-Host "$valor es un número par."
} else {
    Write-Host "$valor es un número impar."
}
