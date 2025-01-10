[int]$edad = Read-Host "Cuantos años tiene?: "
$control = 0
$conteo = 1

do
{
    Write-Host "$conteo"
    $conteo = $conteo + 1
    $control = $control + 1
} until ($control -eq $edad)