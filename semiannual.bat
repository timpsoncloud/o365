@echo off
"C:\O365\setup.exe" /configure "C:\O365\channel.xml"
schtasks /delete /tn "Office UpdateChannel" /f
rmdir /s /q C:\o365
