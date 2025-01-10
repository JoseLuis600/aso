[int]$num = Read-Host "Introduzca un numero: "

if ($num -ge 0) {
    do 
    {
        Write-Host "$num"
        $num = $num - 1
    } until ($num -lt 0)
} else {
    Write-Host "Debe escribir un numero positivo"
}