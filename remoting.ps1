$file=gc  C:\Users\trainee-c3-01\Desktop\live_win.txt

for($i=0;$i -lt $file.count;$i++){
    $ip=[string]$file[$i]

    echo $ip
    echo "-----------------"

    Set-Item WSMan:\localhost\Client\TrustedHosts -Value $ip -Force
    Invoke-Command -ComputerName $ip -Credential administrator -ScriptBlock {systeminfo}
} >>results2.txt
