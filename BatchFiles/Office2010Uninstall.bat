@echo off

cd %systemDrive%\users
dir /s 0551c3_1n.txt
if not errorlevel 1 goto end

cscript \\dc01\NETLOGON\offscrub10.vbs All /Quiet /NoCancel

echo Legacy Office Uninstall Finished > %systemDrive%\users\0551c3_1n.txt

Exit