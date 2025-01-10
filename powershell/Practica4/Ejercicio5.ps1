[int]$num = Read-Host "Escriba un numero: "

for ($i = 1; $i -le 10; $i++) {
    $calculo = $num * $i
    Write-Host "$num * $i = $calculo"
}