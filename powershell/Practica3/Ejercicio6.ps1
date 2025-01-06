$ruta = Read-Host "Escriba la ruta a su fichero o carpeta"

if (Test-Path $ruta) {
    Write-Host "El fichero o carpeta existe"
    Write-Host "**Contenido del fichero**"

    Get-ChildItem $path -Recurse | ForEach-Object {
    Write-Host $_.FullName
    }
} else {
    Write-Host "El fichero o carpeta no existe"
}