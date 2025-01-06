$nombre = Read-Host "Introduzca su nombre"
$sexo = Read-Host "Introduzca su sexo (H para hombre, M para mujer)"

$nombre = $nombre.ToUpper()
$sexo = $sexo.ToUpper()

if ($sexo -eq "H") {
    if ($nombre -ge "N") {
        Write-Host "Perteneces al grupo A"
    } else {
        Write-Host "Perteneces al grupo B"
    }
} elseif ($sexo -eq "M") {
    if ($nombre -le "M") {
        Write-Host "Perteneces al grupo A"
    } else {
        Write-Host "Perteneces al grupo B"
    }
} else {
    Write-Host "Sexo no valido"
}