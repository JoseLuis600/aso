[int]$num = Read-Host "Escriba un numero: "
$valor = 1
$array = @()

if ($num -ge 0) {
    do
    {
        if ($valor % 2 -eq 1) {
            $array += $valor
        }
        $valor = $valor + 1
    } until ($valor -gt $num)
    Write-Host "$($array -join ', ')"
} else {
    Write-Host "Debe escribir un numero positivo"
}