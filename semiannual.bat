@echo off
"C:\O365\setup.exe" /configure "C:\O365\semiannual.xml"
schtasks /delete /tn "Office UpdateChannel" /f
rmdir /s /q C:\o365

