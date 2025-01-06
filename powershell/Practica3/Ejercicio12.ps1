Write-Host "BIENVENID@ A LA PIZZERIA BELLA NAPOLI"
[string]$opcion = Read-Host "Quiere una pizza para vegetarianos (V) o una pizza normal (N)?"

[string]$opcion = $opcion.ToUpper()

switch ($opcion) {
    "V" {
        Write-Host "**INGREDIENTES**"
        Write-Host "1. Pimiento"
        Write-Host "2. Tofu"
        [int]$ingrediente = Read-Host "Elija el numero de su ingrediente"
        if ($ingrediente -eq 1) {
            Write-Host "Ha seleccionado una pizza vegetariana con Pimiento, Tomate y Mozzarella"
        } elseif ($ingrediente -eq 2) {
            Write-Host "Ha seleccionado una pizza vegetariana con Tofu, Tomate y Mozzarella"
        }
    }

    "N" {
        Write-Host "**INGREDIENTES**"
        Write-Host "1. Peperoni"
        Write-Host "2. Jamon"
        Write-Host "3. Salmon"
        [int]$ingrediente = Read-Host "Elija el numero de su ingrediente"
        if ($ingrediente -eq 1) {
            Write-Host "Ha seleccionado una pizza normal con Peperoni, Tomate y Mozzarella"
        } elseif ($ingrediente -eq 2) {
            Write-Host "Ha seleccionado una pizza normal con Jamon, Tomate y Mozzarella"
        } elseif ($ingrediente -eq 3) {
            Write-Host "Ha seleccionado una pizza normal con Salmon, Tomate y Mozzarella"
        }
    }
}