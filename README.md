# CPT-Framework

This project is a framework for CPT engagement. Its a collection of scripts which help assists various CPT squads perform key roles

Framework is controlled by cpt_framework.py file. Simply launch and follow prompts.

CRS:

1. File_change_alarm.ps1/sh scripts monitor a single file for any changes. This is crucial for monitoring keys files such as a website for defacement etc. By utilising this script, CRS team can focus on other tasks while this scripts performs the monitoring function
2. Baseline_change_detector.ps1/sh performs the same function as file_change_alarm but on demand

CSS:

1. quick_ping.ps1/sh is a scripts to be utilised by CSS squand to ping sweep a segment and output txt files of all hosts and hosts files divided by OS type

DCI:

1. Powercat - opensource powershell equivalent of netcat
2. file_downloader.ps1 can be used to download certain files for evidence collection



To Do:

1. Impliment AD scripts
2. Improve performance

