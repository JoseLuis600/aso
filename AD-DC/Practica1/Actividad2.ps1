$departamentos = Import-Csv departamentos.csv -Delimiter ";"
$usuarios = Import-Csv empleados.csv -Delimiter ";"

#Crea la unidad Empresa
New-ADOrganizationalUnit -Name "Empresa" -Path "DC=ASO,DC=LOCAL" -Description "Unidad Empresa"

#Ambos foreach se encargan de crear las unidades, los grupos, los usuarios y asigna los usuarios a sus respectivos grupos
foreach ($dep in $departamentos) {
    New-ADOrganizationalUnit -Name $dep.departamento -Path "OU=Empresa,DC=ASO,DC=LOCAL" -Description $dep.descripcion
    New-ADGroup -Name $dep.departamento -GroupCategory Security -GroupScope Global -Path "OU=$($dep.departamento),OU=Empresa,DC=ASO,DC=LOCAL"
}

foreach ($emp in $usuarios) {
    New-ADUser -Name "$($emp.nombre) $($emp.apellido)" -Path "OU=$($emp.departamento),OU=Empresa,DC=ASO,DC=LOCAL" -SamAccountName "$($emp.nombre.ToLower()).$($emp.apellido.ToLower())" -AccountPassword (ConvertTo-SecureString "aso2025." -AsPlainText -Force) -GivenName $emp.nombre -Surname $emp.apellido -ChangePasswordAtLogon $false -Enabled $true
    Add-ADGroupMember -Identity $emp.departamento -Members "$($emp.nombre).$($emp.apellido)"
}