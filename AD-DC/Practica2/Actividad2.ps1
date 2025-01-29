$departamentos = Import-Csv departamentos.csv -Delimiter ";"

foreach ($dep in $departamentos) {
New-Item -ItemType Directory -Path C:\Empresa\$($dep.departamento)
}

New-SmbShare -Path C:\Empresa -name empresa
Grant-SmbShareAccess -name empresa -AccountName Administradores -AccessRight Full -force

foreach ($dep in $departamentos) {
$acl = Get-Acl -Path C:\Empresa\$($dep.departamento)
$acl.SetAccessRuleProtection($true, $false)
$permisoadmin = @('Administradores', 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
$permisodep = @($dep.departamento, 'Modify', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
$permisoall = $permisodep = @('Usuarios', 'Read', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
$reglaadmin = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadmin
$regladep = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisodep
$reglaall = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoall
$acl.SetAccessRule($reglaadmin)
$acl.SetAccessRule($regladep)
$acl.SetAccessRule($reglaall)
$acl | Set-Acl -Path C:\Empresa\$($dep.departamento)
}