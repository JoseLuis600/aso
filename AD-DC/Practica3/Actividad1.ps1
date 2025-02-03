$empleados = Import-csv -Path empleados.csv -Delimiter ";"
New-Item -ItemType Directory -Path C:\Empresa_users
New-SmbShare -Path C:\Empresa_users -name Empresa_users$
Grant-SmbShareAccess -name Empresa_users$ -AccountName Administradores -AccessRight Full -Force

foreach ($emp in $empleados) {
    New-Item -Itemtype Directory -Path C:\Empresa_users\$($emp.nombre).$($emp.apellido)
    $acl = Get-Acl -Path C:\Empresa_users\$($emp.nombre).$($emp.apellido)
    $acl.SetAccessRuleProtection($true, $false)
    $permisoadmin = @('Administradores', 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
    $permisousu = @("$($emp.nombre).$($emp.apellido)", 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
    $reglaadmin = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisoadmin
    $reglausu= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permisousu
    $acl.SetAccessRule($reglaadmin)
    $acl.SetAccessRule($reglausu)
    $acl | Set-Acl -Path C:\Empresa_users\$($emp.nombre).$($emp.apellido)
    Set-ADUser -Identity "$($emp.nombre).$($emp.apellido)" -ScriptPath "carpetas.bat" -HomeDrive "Z:" -HomeDirectory "\\SERVIDOR\Empresa_users$\$($emp.nombre).$($emp.apellido)"
    }