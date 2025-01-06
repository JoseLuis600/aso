[int]$valor = Read-Host "Escriba su renta anual (sin el simbolo del euro)"

if ($valor -lt 10000) {
    Write-Host "Su tipo impositivo es del 5%"
} elseif ($valor -ge 10000 -and $valor -lt 20000) {
    Write-Host "Su tipo impositivo es del 15%"
} elseif ($valor -ge 20000 -and $valor -lt 35000) {
    Write-Host "Su tipo impositivo es del 20%"
} elseif ($valor -ge 35000 -and $valor -lt 60000) {
    Write-Host "Su tipo impositivo es del 30%"
} elseif ($valor -ge 60000) {
    Write-Host "Su tipo impositivo es del 45%"
}