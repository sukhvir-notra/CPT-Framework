[string]$location=Read-Host -Prompt "Enter the location of the file you want to monitor"
[int]$delay=read-host -Prompt "How often (in seconds) do you want to check the file for integrity"

$hash=(Get-FileHash -Algorithm MD5 $location).hash

Write-Host "The baseline hash of the file is: $hash" -ForegroundColor Green

while($true){
    $hash_new=(Get-FileHash -Algorithm MD5 $location).hash
    if($hash_new -eq $hash){
        Write-Host "[+] File unchanged" -ForegroundColor Green
    }else{
        Write-Host "[-] File CHANGED !! KELSEY !!!!! THE FILE CHANGED !! TELL SOMEONE :)" -ForegroundColor Red
        [console]::beep(1000,500)
        [console]::beep(1000,500)
        #[System.Windows.Forms.MessageBox]::Show("KELSEY !!!!! THE FILE CHANGED !! TELL SOMEONE :)")
    }
    Start-Sleep -s $delay
}

#test