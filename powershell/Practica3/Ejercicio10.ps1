[double]$valor = Read-Host "Escriba la puntuacion"

if ($valor -eq 0.0) {
    Write-Host "Ha tenido un rendimiento inaceptable"
    Write-Host "No recibira ningun extra"
} elseif ($valor -eq 0.4) {
    Write-Host "Ha tenido un rendimiento aceptable"
    $calculo = 2400 * $valor
    Write-Host "Recibira un extra de $calculo euros"
} elseif ($valor -ge 0.6) {
    Write-Host "Ha tenido un rendimiento meritorio"
    $calculo = 2400 * $valor
    Write-Host "Recibira un extra de $calculo euros"
} else {
    Write-Host "Puntuacion invalida"
}