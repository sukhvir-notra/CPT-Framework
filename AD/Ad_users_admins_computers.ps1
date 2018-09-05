#enum users, computers and Administrators

Import-Module ActiveDirectory

echo "Users`n----------`n`n" > Users.txt
get-aduser -filter * -properties DisplayName >> Users.txt

echo "`n`nDomain Admins`n----------------`n`n" > Admins.txt
get-adgroupmember "Domain Admins"|findstr "distinguishedName" >> Admins.txt
 
echo "`n`nServer Admins`n----------------n`n" >> Admins.txt
get-adgroupmember "ServerAdmin" | findstr "distinguishedName" >> Admins.txt

echo "`n`nWorkstations Admin`n------------------`n`n" >> Admins.txt
get-adgroupmember "Workstation Admins" | findstr "distinguishedName" >> Admins.txt

echo "`n`nAdmins`n------------------`n`n" >> Admins.txt
get-adgroupmember "Administrators" -recursive | findstr "distinguishedName" >> Admins.txt

echo "`n`nComputers in AD`n------------------`n`n" >> Admins.txt
get-adcomputer -filter * -properties Name| computers.txt