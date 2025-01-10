[int]$num = Read-Host "Introduzca un numero: "

for ($i = 1; $i -le $num; $i+= 2) {
    $array = @()
    for ($j = $i; $j -ge 1; $j-= 2) {
        $array += $j
    }
    Write-Host "$array"
}