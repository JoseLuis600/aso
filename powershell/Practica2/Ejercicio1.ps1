$DirTrabajo = Get-Location

Write-Host "hola" $env:USERNAME
Write-Host "Tu directorio de trabajo es" $DirTrabajo
Write-Host "Perteneces al dominio" $env:USERDOMAIN
Write-Host "Tu equipo se llama" $env:COMPUTERNAME