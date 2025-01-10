[int]$num = Read-Host "Introduzca un numero: "
$array = @()

for ($i = 1; $i -le $num; $i++) {
    $array += "*"
    Write-Host ($array -join "")
}