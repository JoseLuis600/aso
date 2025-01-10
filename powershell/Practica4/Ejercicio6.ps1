[int]$respuesta = Get-Random -Minimum 0 -Maximum 100
Write-Host "$respuesta"

while ($user -ne $respuesta) {
    [int]$user = Read-Host "Intenta adivinar el numero: "
    if ($user -ne $respuesta) {
        Write-Host "Respuesta incorrecta"
    }
}

Write-Host "Has adivinado el numero!"