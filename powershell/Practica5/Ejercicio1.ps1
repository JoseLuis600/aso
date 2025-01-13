function Sumar {
    param (
        [int]$x,
        [int]$y
    )
    $suma = $x + $y
    Write-Host "La suma de los dos numeros da $suma"
}

function Restar {
    param (
        [int]$x,
        [int]$y
    )
    $resta = $x - $y
    Write-Host "La resta de los dos numeros da $resta"
}

function Multiplicar {
    param (
        [int]$x,
        [int]$y
    )
    $multi = $x * $y
    Write-Host "La multiplicacion de los dos numeros da $multi"
}

function Dividir {
    param (
        [int]$x,
        [int]$y
    )
    $div = $x / $y
    Write-Host "La division de los dos numeros da $div"
}

Write-Host "***CALCULADORA***"
Write-Host "1. Sumar"
Write-Host "2. Restar"
Write-Host "3. Multiplicar"
Write-Host "4. Dividir"
Write-Host "5. Salir"
$opcion = Read-Host "Elija el numero de la opcion: "

switch ($opcion) {
    1 {
        $numero1 = Read-Host "Escriba el primer numero: "
        $numero2 = Read-Host "Escriba el segundo numero: "
        Sumar $numero1 $numero2
    }
    2 {
        $numero1 = Read-Host "Escriba el primer numero: "
        $numero2 = Read-Host "Escriba el segundo numero: "
        Restar $numero1 $numero2
    }
    3 {
        $numero1 = Read-Host "Escriba el primer numero: "
        $numero2 = Read-Host "Escriba el segundo numero: "
        Multiplicar $numero1 $numero2
    }
    4 {
        $numero1 = Read-Host "Escriba el primer numero: "
        $numero2 = Read-Host "Escriba el segundo numero: "
        Dividir $numero1 $numero2
    }
    5 {
        exit 0
    }
}