$servers = Get-ExchangeServer | where {$_.isHubTransportServer -eq $true }
ForEach ($Server in $Servers)
	{get-Queue -Server $server}
