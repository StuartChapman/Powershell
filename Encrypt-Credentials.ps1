#Initial setup of credentials, and encryption.
$KeyFile = "C:\Temp\AES.key"
$Key = New-Object Byte[] 32   # You can use 16, 24, or 32 for AES
[Security.Cryptography.RNGCryptoServiceProvider]::Create().GetBytes($Key)
$Key | out-file $KeyFile
$PasswordFile = "C:\Temp\Password.txt"
$Key = Get-Content $KeyFile
$Password = "Password" | ConvertTo-SecureString -AsPlainText -Force
$Password | ConvertFrom-SecureString -key $Key | Out-File $PasswordFile

#Use this to access the encrypted credentials
<#
$User = "MyUserName"
$PasswordFile = "\\Machine1\SharedPath\Password.txt"
$KeyFile = "\\Machine1\SharedPath\AES.key"
$key = Get-Content $KeyFile
$MyCredential = New-Object -TypeName System.Management.Automation.PSCredential `
-ArgumentList $User, (Get-Content $PasswordFile | ConvertTo-SecureString -Key $key)
#>
