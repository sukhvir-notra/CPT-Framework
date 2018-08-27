#!/bin/bash

read -p "Enter the location of file:" location
read -p "How often (in seconds) do you want to check:" delay

cat $location|md5sum > baseline.txt
echo "baseline hash is:"
cat baseline.txt

while true
do
	cat $location|md5sum>new.txt
	if cmp -s new.txt baseline.txt
	then
		echo "[+] File unchanged"
	else
		echo "[-] FILE CHANGED!!"
		make;spd-say "ALERT ALERT ALERT KELSEY"
	fi
	sleep $delay
done

