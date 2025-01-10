$pass = "contraseña"
$control = 0
do
{
    $input = Read-Host "Introduzca la contraseña: "
    if ($input -ne $pass) {
        Write-Host "Contraseña incorrecta"
    } else {
        $control = 1
    }
} until ($control -eq 1)

Write-Host "Contraseña correcta"