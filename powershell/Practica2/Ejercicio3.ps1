[INT]$horas = Read-Host "¿Cuantas horas has trabajado?"
[INT]$precio = Read-Host "¿Cuanto cobras por hora?"

$calculo = $horas * $precio

Write-Host "`nHas de cobrar" $calculo "euros por" $horas "horas de trabajo"