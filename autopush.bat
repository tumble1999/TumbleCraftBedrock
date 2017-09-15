@echo off
title GitHub Auto Save
:loop
ping localhost>nul
git status
git fetch
echo.
echo.
git status
git add .
echo.
echo.
git status
git commit -m "server auto-save"
echo.
echo.
git status
git pull
echo.
echo.
git status
git push
echo.
echo.
goto :loop