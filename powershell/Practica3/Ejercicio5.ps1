$ruta = Read-Host "Escriba la ruta a su fichero o carpeta"

if (Test-Path $ruta) {
    Write-Host "El fichero o carpeta existe"
} else {
    Write-Host "El fichero o carpeta no existe"
}