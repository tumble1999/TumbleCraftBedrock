@echo off
echo starting...
:loop
cls
set "ipGet=ipconfig | findstr /i /n 'ipv4' | findstr /i"
%ipGet% "10" & %ipGet% "48"
set ipGet=
echo.
call start.cmd
goto loop
