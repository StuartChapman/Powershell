# Set domain\username into a string
$username = Read-Host "Enter username in domain\username format"

# Set password into a string:
$password = Read-Host "Enter Password" | ConvertTo-SecureString -asPlainText -Force

# Encrypt the credentials into a string
$cred = New-Object System.Management.Automation.PSCredential($username,$password)

#You can then use $cred as authentication against a remote host for powershell execution.
