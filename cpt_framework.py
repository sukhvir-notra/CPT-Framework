import subprocess, sys
import os
import urllib
import time

banner='''
   ____ ____ _____   _____                                            _    
  / ___|  _ \\_   _| |  ___| __ __ _ _ __ ___   _____      _____  _ __| | __
 | |   | |_) || |   | |_ | '__/ _` | '_ ` _ \\ / _ \\ \\ /\\ / / _ \\| '__| |/ /
 | |___|  __/ | |   |  _|| | | (_| | | | | | |  __/\\ V  V / (_) | |  |   < 
  \\____|_|    |_|   |_|  |_|  \\__,_|_| |_| |_|\\___| \\_/\\_/ \\___/|_|  |_|\\_\\
                                                                           
'''
print banner
print "\n\nFramework created by: LEUT Sukhvir Singh Notra, RAN\nContact: sukhvir.notra@defence.gov.au\nFramework version:1 (18 Aug 2018)" +'\n'+ "="*50 +'\n\n'

def print_menu():

	print "\t1. PING SWEEPS"
	print "\t2. FILE CHANGE ALERT - Fire and Forget"
	print "\t3. Compare changes to baseline"
	print "\t4. BASELINE - Light"
	print "\t5. BASELINE - Heavy"
	print "\t6. ACTIVE DIRECTORY"
	print "\t7. File Transfers"
	print "\t8. Freestyle"
	print "\n\t0. Quit"
	print "\n"   

while True:
	print_menu()
	choice = input("Enter your choice [1-10]: ")

	if choice==1: #ping sweeps
		print "\n\t1. Windows"
		print "\t2. Linux"
		menu = input("\nEnter your choice [1-2]: ")

		if menu==1:
			p = subprocess.Popen(["powershell.exe", "C:\\Users\\adct\\Desktop\\quick_ping.ps1"], stdout=sys.stdout)
			p.communicate()
		elif menu==2:
			os.system('./ping.sh')
		else:
			print "Incorrect choice - going back to main menu"
	
	elif choice==2: #File change alert
		print "\n\t1. Windows"
		print "\t2. Linux"
		menu = input("\nEnter your choice [1-2]: ")

		if menu==1:
			p1 = subprocess.Popen(["powershell.exe", "C:\\Users\\adct\\Desktop\\file_change_alarm.ps1"], creationflags=subprocess.CREATE_NEW_CONSOLE)
		elif menu==2:
			os.system('gnome-terminal -x ./file_change_alarm.sh')
			#os.system('./file_change_alarm')
		else:
			print "Incorrect choice - going back to main menu"
	
	elif choice==3: #changes to baseline
		print "\n\t1. Windows"
		print "\t2. Linux"
		menu = input("\nEnter your choice [1-2]: ")

		if menu==1:
			p = subprocess.Popen(["powershell.exe", "C:\\Users\\adct\\Desktop\\baseline_change_detector.ps1"], stdout=sys.stdout)
			p.communicate()
		elif menu==2:
			os.system('./baseline_change_detector.sh')
		else:
			print "Incorrect choice - going back to main menu"
	
	elif choice==4: #baseline - light
		print "\n\t1. Windows"
		print "\t2. Linux"
		menu = input("\nEnter your choice [1-2]: ")

		if menu==1:
			print "**** Under Development ****"
		elif menu==2:
			print "**** Under Development ****"
		else:
			print "Incorrect choice - going back to main menu"
	
	elif choice==5: #baseline - heavy
		print "\n\t1. Windows"
		print "\t2. Linux"
		menu = input("\nEnter your choice [1-2]: ")

		if menu==1:
			print "**** Under Development ****"
		elif menu==2:
			print "**** Under Development ****"
		else:
			print "Incorrect choice - going back to main menu"

	elif choice==6: #AD
		print "\n\t1. Changes to AD since a given date"
		print "\t2. List of Admins in AD"
		print "\t3. List of Users in AD"
		print "\t4. List of domain computers in AD"
		print "\t5. Create temporary (1hr) Admin account for the domain"
		print "\t6. Monitor for new AD users/admins (account creation/deletion)"
		print "\t7. Monitor for new AD computers (creation/deletion)"
		print "\t8. Roll AD Creds"
		print "\t9. Monitor DHCP leases"
		menu = input("\nEnter your choice [1-9]: ")

		if menu==1:
			print "**** Under Development ****"
		elif menu==2:
			print "**** Under Development ****"
		elif menu==3:
			print "**** Under Development ****"
		elif menu==4:
			print "**** Under Development ****"
		elif menu==5:
			print "**** Under Development ****"
		elif menu==6:
			print "**** Under Development ****"
		elif menu==7:
			print "**** Under Development ****"
		elif menu==8:
			print "**** Under Development ****"
		elif menu==9:
			print "**** Under Development ****"
		else:
			print "Incorrect choice - going back to main menu"

	elif choice==7: #file transfer
		print "\n\t1. Upload"
		print "\t2. Download"
		menu = input("\nEnter your choice [1-2]: ")

		if menu==1:
			print "Firewall is being turned off for 5 minutes"
			os.system('NetSh Advfirewall set allprofiles state off')
			p = subprocess.Popen(["powershell.exe", "python -m SimpleHTTPServer 9000"], creationflags=subprocess.CREATE_NEW_CONSOLE)
			print "Current directory is being served on port 9000\n"
			time.sleep(300)
			os.system('NetSh Advfirewall set allprofiles state on')
			print "Firewall has been turned back on !! Close the python server window\n\n"
		elif menu==2:
			filename = raw_input("\nWhat would you like to call the downloaded file? ")
			url=raw_input("\nEnter the full URL for the file (including http://): ")
			try:
				urllib.urlretrieve (url, filename)
				print "\nFile stored in current directory"
			except Exception as e:
				print "Download failed : "+str(e)
		else:
			print "Incorrect choice - going back to main menu"
		
	elif choice==8: #free style
		print "\n\t1. Powershell"
		print "\t2. Bash"
		menu = input("\nEnter your choice [1-2]: ")

		if menu==1:
			p = subprocess.Popen(["powershell.exe"], creationflags=subprocess.CREATE_NEW_CONSOLE)
		elif menu==2:
			os.system('gnome-terminal -x ./file_change_alarm.sh')
		else:
			print "Incorrect choice - going back to main menu"
		
	elif choice==0:
		print "Exiting .. Bye .. "
		break	
	else:
		print "Please choose a number between 1-10"	