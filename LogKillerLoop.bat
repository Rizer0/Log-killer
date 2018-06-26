@echo off
color 7
title Log Killer
echo  -==========================================-
echo -=            -| Log killer |-              =-
echo -=   This tool going to delete all logs !   =-
echo  -==========================================-
timeout 5
:home
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :clear "%%G")
echo.
echo logs has deleted
goto :home
timeout 5
:clear
echo [+] %1
wevtutil.exe cl %1
goto :eof
:theEnd
