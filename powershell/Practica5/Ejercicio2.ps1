$datos = Import-Csv .\CSV\usuarios.csv -Delimiter ","
$conteo = 0

foreach ($usuario in $datos) {
    $conteo++
    Write-Host "**USUARIO $conteo**"
    Write-Host "Nombre: $($usuario.nombre)"
    Write-Host "Apellidos: $($usuario.apellidos)"
    Write-Host "Grupo: $($usuario.grupo)"
}