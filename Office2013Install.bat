@echo off

cd %systemDrive%\users
dir /s C0mpl3te_0ff1c3.txt
if not errorlevel 1 goto end

\\dc01\netlogon\setup2013.exe /configure \\dc01\netlogon\configuration2013.xml

echo Office 2013 ProPlus Finished > %systemDrive%\Users\C0mpl3te_0ff1c3.txt

:end
Exit