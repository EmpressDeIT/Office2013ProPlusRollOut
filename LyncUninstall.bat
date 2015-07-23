@echo off

cd %systemDrive%\users
dir /s Lync_In.txt
if not errorlevel 1 goto end

wmic product where "description='Microsoft Lync 2010' " uninstall

echo Legacy Lync Uninstall Finished > %systemDrive%\users\Lync_In.txt

Exit
