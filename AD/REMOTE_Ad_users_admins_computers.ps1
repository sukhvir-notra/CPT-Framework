#enum users, computers and Administrators

Import-Module ActiveDirectory

[string]$ip=read-host -Prompt "Enter DC IP "

echo "Users`n----------`n`n" > Users.txt
invoke-command -ComputerName $ip -Credential Administrator -ScriptBlock{get-aduser -filter * -properties DisplayName} >> Users.txt

echo "`n`nDomain Admins`n----------------`n`n" > Admins.txt
invoke-command -ComputerName $ip -Credential Administrator -ScriptBlock{get-adgroupmember "Domain Admins"|findstr "distinguishedName"} >> Admins.txt
 
echo "`n`nServer Admins`n----------------n`n" >> Admins.txt
invoke-command -ComputerName $ip -Credential Administrator -ScriptBlock{get-adgroupmember "ServerAdmin" | findstr "distinguishedName"} >> Admins.txt

echo "`n`nWorkstations Admin`n------------------`n`n" >> Admins.txt
invoke-command -ComputerName $ip -Credential Administrator -ScriptBlock{get-adgroupmember "Workstation Admins" | findstr "distinguishedName"} >> Admins.txt

echo "`n`nAdmins`n------------------`n`n" >> Admins.txt
invoke-command -ComputerName $ip -Credential Administrator -ScriptBlock{get-adgroupmember "Administrators" -recursive | findstr "distinguishedName"} >> Admins.txt

echo "`n`nComputers in AD`n------------------`n`n" >> Computers.txt
invoke-command -ComputerName $ip -Credential Administrator -ScriptBlock{get-adcomputer -filter * -properties Name}>> computers.txt