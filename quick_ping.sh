 #!/bin/bash

read -p "Enter the first three octets of the IP range: " range
read -p "Enter start IP (eg: 1): " start
read -p "Enter last IP (eg: 255): " last

for ip in $(seq $start $last); do
    ping -c 1 $range.$ip | grep "bytes from" | cut -d " " -f 4 | cut -d ":" -f 1 >> live_host.txt &
done

cat live_host.txt
