#Powershell script to set snapshot.maxsnapshots to 1 on all vm's (in development folder)

$vc = Read-Host "Enter the vCenter Server to connect to"
$folder = Read-Host "Enter the folder name in vCenter where the vm's are"
Add-PSSnapin VMware.VimAutomation.Core
Connect-VIServer -Server $vc
$vmlist = get-folder $folder | get-vm
$spec = New-Object VMware.Vim.VirtualMachineConfigSpec 
$spec.extraConfig += New-Object VMware.Vim.OptionValue 
$spec.extraConfig[0].key = "snapshot.maxSnapshots"
# Change the following value to match required number of snapshots
$spec.extraConfig[0].value = 1

foreach ($vm in $vmlist)
	{
	write-host $vm
	$result = Get-VM $vm | %{$_.ExtensionData.ReconfigVM_Task($spec)}
	
	}
