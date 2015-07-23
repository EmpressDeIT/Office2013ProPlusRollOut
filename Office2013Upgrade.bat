@echo off

cd %systemDrive%\users
dir /s C0mpl3te_0ff1c3.txt
if errorlevel 0 goto end

echo Started Upgrade > %systemDrive%\users\StartUpgrade.txt

@echo off

wmic product where "description='Microsoft Lync 2010' " uninstall

echo Legacy Lync Uninstall Finished > %systemDrive%\users\Lync_In.txt

@echo off

cscript \\dc01\NETLOGON\offscrub10.vbs All /Quiet /NoCancel

echo Legacy Office Uninstall Finished > %systemDrive%\users\0551c3_1n.txt

@echo off

\\dc01\netlogon\setup2013.exe /configure \\dc01\netlogon\configuration2013.xml

echo Office 2013 ProPlus Finished > %systemDrive%\Users\C0mpl3te_0ff1c3.txt


Exit