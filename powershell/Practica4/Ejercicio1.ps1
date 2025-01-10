$nombre = Read-Host "Escriba su nombre de usuario: "
[int]$rep = Read-Host "Escriba el numero de repeticiones: "
$control = 0

do
{
    Write-Host "$nombre"
    $control = $control + 1
} until ($control -eq $rep)