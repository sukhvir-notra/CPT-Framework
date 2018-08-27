#!/bin/bash
read -p "Enter the location of baseline file:" baseline
read -p "Enter the location of the file that you want to compare to baseline:" newfile

cat $baseline|md5sum > baseline.txt
cat $newfile|md5sum>new.txt

if cmp -s new.txt baseline.txt
then
	echo "[+] No changes to baseline"
else
	echo "[-] BASELINE CHANGE DETECTED !! KELSEY !!!!! THE BASELINE CHANGED !! TELL SOMEONE :)"
	make;spd-say "ALERT ALERT ALERT KELSEY"
fi