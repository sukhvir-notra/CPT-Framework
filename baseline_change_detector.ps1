[string]$baseline=Read-Host -Prompt "Enter location of baseline file"
[string]$newfile=Read-Host -Prompt "Enter the location of the file that you want to compare to baseline"

$hash_baseline=(Get-FileHash -Algorithm MD5 $baseline).hash
$hash_new=(Get-FileHash -Algorithm MD5 $newfile).hash

if($hash_new -eq $hash_baseline){
    Write-Host "[+] No changes to baseline" -ForegroundColor Green
}else{
    Write-Host "[-] BASELINE CHANGE DETECTED !! KELSEY !!!!! THE BASELINE CHANGED !! TELL SOMEONE :)" -ForegroundColor Red
    [console]::beep(1000,500)
    [console]::beep(1000,500)
    #[System.Windows.Forms.MessageBox]::Show("KELSEY !!!!! THE BASELINE CHANGED !! TELL SOMEONE :)")
}