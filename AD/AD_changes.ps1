#AD Baseline

Import-Module ActiveDirectory

$current=Get-Date
$choice=Read-Host -Prompt "Find changes to baseline from:`n1. Hours ago`n2. Days ago`n`nChoose 1 or 2 "

if ($choice==1){
    $start=read-host -Prompt "`n`nEnter how many hours"
    $current=$current.AddHours(-$start)
}elseif($choice==2){
    $start=read-host -Prompt "`n`nEnter how many days"
    $current=$current.AddDays((-$start)
}

$changes = get-adobject -filter 'whenChanged -gt $start' -includedeletedobjects | sort-object objectclass | fl deleted,name,objectclass

$i=0
foreach($change in $changes){
    $i+=1
}

Write-Host "Number of chnages since $start is $i" -ForegroundColor Green

$changes > AD_changes.txt