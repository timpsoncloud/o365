@echo off
powershell -Command "Get-AppxPackage -AllUsers 'Microsoft.OutlookForWindows' | Remove-AppxPackage -AllUsers -ErrorAction SilentlyContinue" 
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WorkplaceJoin" /v BlockAADWorkplaceJoin /t REG_DWORD /d 1 /f
"C:\O365\setup.exe" /configure "C:\O365\config.xml"
schtasks /delete /tn "Deploy M365 Apps" /f
rmdir /s /q C:\o365
shutdown /f /r /t 0
