[string]$contraseña = "COntraseña"

[string]$valor = Read-Host "Escriba la contraseña"

if ($contraseña.ToLower() -eq $valor.ToLower()) {
    Write-Host "La contraseña es correcta"
} else {
    Write-Host "La contraseña es incorrecta"
}