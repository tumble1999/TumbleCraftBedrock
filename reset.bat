@echo off
:start
echo What?
echo 1. World
echo 2. Players
echo 3. Log
set /p choice=:
if "%choice%"=="" cls
if "%choice%"=="1" (
  rmdir worlds /s
  echo done
  pause
)
if "%choice%"=="2" (
  rmdir players /s
  echo done
  pause
)
if "%choice%"=="3" (
  del server.log
  echo done
  pause
)
goto start
