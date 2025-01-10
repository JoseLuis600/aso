$array = @('a) Crear una carpeta', 'b) Crear un fichero nuevo', 'c) Cambiar el nombre de un fichero o carpeta', 'd) Borrar un archivo o carpeta', 'e) Verificar si existe un fichero o carpeta', 'f) Mostrar el contenido de un directorio', 'g) Mostrar la fecha y hora actuales', 'x) Salir')

Write-Host ($array -join "`n")
$eleccion = Read-Host "Elija una de las opciones: "

switch($eleccion.ToLower()) {
    'a' {
        $carpeta = Read-Host "Escriba el la ruta absoluta para crear la carpeta: "
        if (Test-Path $carpeta) {
            Write-Host "La carpeta ya existe"
        } else {
            New-Item -Path "$carpeta" -ItemType Directory
        }
    }

    'b' {
        $fichero = Read-Host "Escriba la ruta absoluta para crear el fichero: "
        if (Test-Path $fichero) {
            Write-Host "El fichero ya existe"
        } else {
            New-Item -Path "$fichero" -ItemType File
        }
    }

    'c' {
        $nombreant = Read-Host "Escriba la ruta absoluta: "
        if (Test-Path $nombreant) {
            $nombrenue = Read-Host "Escriba el nuevo nombre: "
            Rename-Item -Path "$nombreant" -NewName "$nombrenue"
            Write-Host "Nombre cambiado"
        } else {
            Write-Host "No se pudo encontrar el archivo o carpeta"
        }
    }

    'd' {
        $nombre = Read-Host "Escriba la ruta absoluta: "
        if (Test-Path $nombre) {
            if (Get-ChildItem -Path $nombre) {
                $comprobar = Read-Host "La carpeta contiene datos, desea eliminarlos? Y/N"
                if ($comprobar.ToLower() -eq "y") {
                    Remove-Item -Recurse -Path "$nombre"
                    Write-Host "Eliminado"
                } elseif ($comprobar.ToLower() -eq "n") {
                    Exit 0
                } else {
                    Write-Host "Opcion invalida"
                }
            } else {
                Remove-Item -Path "$nombre"
                Write-Host "Eliminado"
            }
        } else {
            Write-Host "No se pudo encontrar el archivo o carpeta"
        }
    }

    'e' {
        $nombre = Read-Host "Escriba la ruta absoluta: "
        if (Test-Path $nombre) {
            if ((Get-Item "$nombre").PSIsContainer) {
                Write-Host "Existe la carpeta"
            } else {
                Write-Host "Existe el archivo"
            }
        } else {
            Write-Host "No se pudo encontrar el archivo o carpeta"
        }
    }
    'f' {
        $nombre = Read-Host "Escriba la ruta absoluta"
        if (Test-Path $nombre) {
            $hijo = Get-ChildItem -Path $nombre
            Write-Host "$hijo"
        } else {
            Write-Host "No se pudo encontrar el archivo o carpeta"
        }
    }

    'g' {
        Get-Date
    }

    'x' {
        Write-Host "Saliendo"
        Exit 0
    }
}