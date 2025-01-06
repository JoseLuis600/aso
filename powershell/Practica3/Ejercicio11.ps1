[int]$edad = Read-Host "Introduzca su edad"

if ($edad -lt 4) {
    Write-Host "La entrada es gratuita"
} elseif ($edad -ge 4 -and $edad -le 18) {
    Write-Host "La entrada le costara 5 euros"
} else {
    Write-Host "La entrada le costara 10 euros"
}