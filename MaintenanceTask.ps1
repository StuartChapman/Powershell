<#
.SYNOPSIS
Cleans up the local backup folders in E:\SAPBackups\Backups\Sapphire\Applications E:\SAPBackups\Backups\Sapphire\Databases and E:\SAPBackups\Backups\Repo folders as per a set of rules defined by the following criteria

.DESCRIPTION
The cleanup process cleans up (Renames/Deletes) the folders created by the backup jobs. 
The backups' folders are in date format of YYYYMMDD. The cleanup process follows the following rules:
\Applications 
	- Keep the last 7 days (rolling).
	- Keep the first day of the month.
	- Delete everything else.
\Database 
	- Keep the last 7 days (rolling).
	- Keep the first day of the month.
	- Delete everything else.
\Repo
	- Keep the last 14 days of the month.
	- Keep the first Saturday of the month and rename the folder to "YYYYMMDD (FULL)".
	- Keep the first Sunday of the month and rename the folder to "YYYYMMDD (QUICK)".
	- Delete everything else.
The script will also create a Windows Event Viewer "Source" called "Backup Cleanup"
Every rename or deletion performed by this script will trigger an informational message to be logged under this source in EventViewer, so that you can easily check for any errors that occur.

.PARAMETER help
Invokes Get-Help for this script.
You can also supply the extra parameters that are accepted by Get-Help such as -full, -examples, and -detailed.

.INPUTS
None

.OUTPUTS
None

.NOTES
Author: Stuart Chapman
PowerShell minimum version requirements: v3

.LINK
N/A

.EXAMPLE
./MaintenanceTask.ps1

.EXAMPLE
help ./MaintenanceTask.ps1

This will run the full help for the program.
It's equivalent to: Get-Help MaintenanceTask.ps1 -full
#>

#Clear the console window.
Clear

#Check PowerShell Version.
$PSCheck = $PSVersionTable.PSVersion.Major
If ($PSCheck -lt 3) {
	#PowerShell is too low.
	Write-Host -ForegroundColor Red "PowerShell version"$PSCheck" detected. Exiting script."
	Break
	}
Else{
	Write-Host -ForegroundColor Green "PowerShell version"$PSCheck" detected. Continue script."
	}

#Global Variables:
#Paths - this could be parametised, if required. If not, just change these paths as required.
$application = "E:\SAPBackups\Backups\Sapphire\Applications"
$database = "E:\SAPBackups\Backups\Sapphire\Databases"
$repo = "E:\SAPBackups\Backups\Repo"

#Get the current date in format that matches folder naming convention:
$CurrentDay = get-date -Format "dd"
$CurrentMonth = get-date -Format "MM"
$CurrentYear = get-date -Format "yyyy"

$date = Get-Date 
$startofmonth = Get-Date $date -day 1 -hour 0 -minute 0 -second 0
$endofmonth = (($startofmonth).AddMonths(1).AddSeconds(-1))

#EventLog stuff
#Check eventlog source exists, if not, create.
$check = [System.Diagnostics.EventLog]::SourceExists("Backup Cleanup")
If ($check -eq $False){
	New-EventLog –LogName Application –Source "Backup Cleanup"
	}
	
#write eventlog entry
Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Information –EventID 1 –Message "Starting scheduled task to cleanup backups."

#Function to get the first DAY of the month. Allows us to get the first Saturday of the month.
#This part of the script requires PowerShell 3.0 It fails to bind parameters with an error I can't solve in PowerShell 2.0
Function Get-FirstXdayOfMonth {            
[CmdletBinding()]            
param(            
    [parameter(Mandatory)]
    [String]$Day,            
    [parameter(ParameterSetName='ByDate',Mandatory,ValueFromPipeline)]            
    [System.DateTime]$Date,            
    [parameter(ParameterSetName='ByString',Mandatory,ValueFromPipelineByPropertyName)]            
    [ValidateRange(1,12)]            
    [int]$Month,             
    [parameter(ParameterSetName='ByString',Mandatory,ValueFromPipelineByPropertyName)]            
    [ValidatePattern('^\d{4}$')]            
    [int]$Year,            
    [switch]$asDate=$false            
)            
Begin {            
    $alldays = @()            
	}
Process {            
    # Validate the Day string passed as parameter by casting it into            
    if (-not([System.DayOfWeek]::$Day -in 0..6)) {            
        Write-Warning -Message 'Invalid string submitted as Day parameter'            
        return            
    }            
    Switch ($PSCmdlet.ParameterSetName){            
    ByString {            
            # Do nothing, variables are already defined and validated            
        }            
    ByDate{            
			$Month = $Date.Month            
            $Year = $Date.Year            
        }            
    }
    # There aren't 32 days in any month so we make sure we iterate through all days in a month            
    0..31 | ForEach-Object -Process {            
        $evaldate = (Get-Date -Year $Year -Month $Month -Day 1).AddDays($_)            
        if ($evaldate.Month -eq $Month)            
        {            
            if ($evaldate.DayOfWeek -eq $Day) {            
                $alldays += $evaldate.Day            
            }            
        }            
    }            
    # Output            
	If ($asDate) {            
    Get-Date -Year $Year -Month $Month -Day $alldays[0]            
	} else {            
	$alldays[0]}         
	}#End Process            
End {}            
}

######Application & Database folders.
$Applicationlist = Get-ChildItem -Path $Application -recurse
ForEach ($entry in $Applicationlist){
	If ($entry.CreationTime.Date -ge ((get-date).AddDays(-7))) {
		Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Information –EventID 1 –Message "$application\$entry was created within the last 7 days."
		#Do nothing, we want to keep the last 7 days
	}
	If ($entry.CreationTime.Date -eq $startofmonth){
		Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Information –EventID 1 –Message "$application\$entry matches 1st day of the month, keeping the folder."
		#Do nothing, we want to keep the first day of month
	} 
	#Creation date is older than 7 days, and isn't first day of the month, delete
	If ($entry.CreationTime.Date -lt ((get-date).AddDays(-7)) -AND ($entry.CreationTime.Date -gt $startofmonth)){
		Try{
			rm $application\$entry -recurse -force -erroraction silentlycontinue
		}
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
		}	
		Finally{
			Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Error –EventID 2 –Message "$application\$entry was not removed because of $ErrorMessage $FailedItem."
		}	
		#Check that the folder was removed ok
		$check = Test-Path $application\$FolderToDelete
		If ($check -eq $false){
		Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Information –EventID 1 –Message "$application\$entry removed."
		}
		Else{
		Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Error –EventID 2 –Message "$application\$entry was not removed because of $ErrorMessage $FailedItem."
		}
	}#Close If ($entry.CreationTime.Date -lt ((get-date).AddDays(-7)) -AND ($entry.CreationTime.Date -gt $startofmonth))
}#Close ForEach

######Database folders.
$Databaselist = Get-ChildItem -Path $Database -recurse
ForEach ($entry in $Databaselistlist){
	if ($entry.CreationTime.Date -lt ((get-date).AddDays(-31))){
	#Creation date is older than 1 month - keep folder.
	}
	If ($entry.CreationTime.Date -eq $startofmonth){
		Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Information –EventID 1 –Message "$Database\$entry creation date matches the 1st day of month."
		#Do nothing, we want to keep the first day of month
	} 
	If ($entry.CreationTime.Date -ge ((get-date).AddDays(-7))) {
		Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Information –EventID 1 –Message "$Database\$entry was created within the last 7 days."
		#Do nothing, we want to keep the last 7 days
		}
	If ($entry.CreationTime.Date -lt ((get-date).AddDays(-7)) -AND ($entry.CreationTime.Date -gt $startofmonth)){
	#Creation date is older than 7 days, and isn't first day of the month
		Try{
			rm $Database\$entry -recurse -force -erroraction silentlycontinue
		}
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
		}	
		Finally{
			Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Error –EventID 2 –Message "$Database\$entry was not removed because of $ErrorMessage $FailedItem."
		}	
		#Check that the folder was removed ok
		$check = Test-Path $Database\$entry
		If ($check -eq $false){
			Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Information –EventID 1 –Message "$Database\$entry removed."
		}
		Else{
			Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Error –EventID 2 –Message "$Database\$entry was not removed because of $ErrorMessage $FailedItem."
		}
	} #Close If ($entry.CreationTime.Date -lt ((get-date).AddDays(-7)) -AND ($entry.CreationTime.Date -gt $startofmonth))
}

##### Repo Folder clean up:
#Get the Backup Saturday date.
[String]$TargetSaturday = Get-FirstXdayOfMonth -Day Saturday -Month $CurrentMonth -Year $CurrentYear
#Prepend a 0 to the date for easier matching to the folder naming format 
If ($TargetSaturday.Length -lt 2){ 
    #insert 0 to Saturday digit
    [string]$Saturday=($TargetSaturday).insert(0,'0')
    }
#Dynamically create the name for the Backup folder in YYYYMMDD format.
$FullBackupFolder_OLD = $CurrentYear+$CurrentMonth+$Saturday
$FullBackupFolder_NEW = $CurrentYear+$CurrentMonth+$Saturday+" (FULL)"
if (test-path $repo\$FullBackupFolder_OLD){
	#Rename Saturday Folder to "YYYYMMDD (FULL)"
	Try{
		#Rename the folder to Full
		Rename-Item $repo\$FullBackupFolder_OLD $repo\$FullBackupFolder_NEW
	}
	Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
	}	
	Finally{
		#Write-host -ForegroundColor Red $ErrorMessage
		#Write-Host -ForegroundColor Red $FailedItem
		Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Error –EventID 2 –Message "$Repo\$FullBackupFolder_OLD was not renamed because of $ErrorMessage $FailedItem."
	}	
	If (Test-Path $repo\$FullBackupFolder_NEW){
		#write eventlog entry
		Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Information –EventID 1 –Message "$Repo\$FullBackupFolder_OLD renamed to $Repo\$FullBackupFolder_NEW"
		}
	Else{
		Write-Host -ForegroundColor Red $repo\$FullBackupFolder_OLD" Was NOT deleted"
		Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Error –EventID 2 –Message "$Repo\$FullBackupFolder_OLD was not removed because of $ErrorMessage $FailedItem."
		}	
	}#Close If			
# Get the Quick Backup date.
[String]$TargetSunday = Get-FirstXdayOfMonth -Day Sunday -Month $CurrentMonth -Year $CurrentYear
#Prepend a 0 to the date for easier matching to the folder naming format 
If ($TargetSunday.Length -lt 2){ 
    #insert 0 to Sunday digit
    [string]$Sunday=($TargetSunday).insert(0,'0')
}           
$QuickBackupFolder_OLD = $CurrentYear+$CurrentMonth+$Sunday
$QuickBackupFolder_NEW = $CurrentYear+$CurrentMonth+$Sunday+" (QUICK)"
if (test-path $repo\$QuickBackupFolder_OLD){
	#Rename Sunday Folder to "YYYYMMDD (QUICK)"
	Try{
		#Rename the folder to Quick
		Rename-Item $repo\$QuickBackupFolder_OLD $repo\$QuickBackupFolder_NEW
	}
	Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
	}		
	Finally{
		Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Error –EventID 2 –Message "Error when renaming $repo\$QuickBackupFolder_OLD because of $ErrorMessage $FailedItem"
		#Write-host -ForegroundColor Red $ErrorMessage
		#Write-Host -ForegroundColor Red $FailedItem
	}	
	If (Test-Path $repo\$QuickBackupFolder_NEW){
		#Write-Host -ForegroundColor Green $QuickBackupFolder_OLD"was renamed to"$QuickBackupFolder_NEW
		#write eventlog entry
		Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Information –EventID 1 –Message "$QuickBackupFolder_OLD renamed to $QuickBackupFolder_NEW"
	}
	Else{
		#Write-Host -ForegroundColor Red $QuickBackupFolder_OLD" Was NOT renamed"
		Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Error –EventID 2 –Message "$Repo\$FullBackupFolder_OLD was not removed because of $ErrorMessage $FailedItem."
	}			
}#Close If
#Remove anything older than 14 Days from Repo folder where the folder name does not include (QUICK) or (FULL)
$limit = (get-date).AddDays(-14)
$Repolist = Get-ChildItem -Path $Repo -recurse
ForEach ($entry in $Repolist){
	If (($entry.Name -match "(FULL)") -OR ($entry.Name -match "(QUICK)")){#Keep folder, so do nothing
	}
	If (($entry.Name -notmatch "(FULL)") -OR ($entry.Name -notmatch "(QUICK)") -AND ($entry.CreationTime -lt $limit)){
		#The creation date on the file/folder is older than 14days, and is not (Quick) or (Full) so delete.
		Try{
		Remove-Item $Entry
		}
		Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
		}	
		Finally{
		Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Error –EventID 2 –Message $ErrorMessage
		Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Error –EventID 2 –Message $FailedItem
		#Write-host -ForegroundColor Red $ErrorMessage
		#Write-Host -ForegroundColor Red $FailedItem
		}
		Write-EventLog –LogName Application –Source "Backup Cleanup" -EntryType Information –EventID 1 –Message "Cleaning up $entry as it is older than 14 days"
		}#Close If
		
	}#Close ForEach
