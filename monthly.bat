@echo off
"C:\O365\setup.exe" /configure "C:\O365\monthly.xml"
schtasks /delete /tn "Office UpdateChannel" /f
rmdir /s /q C:\o365