Import-Module ActiveDirectory
$computer = Read-Host "Enter Computer name to check last logon"
$a=Get-ADComputer -Identity $computer -Properties *
$a.LastLogonDate
