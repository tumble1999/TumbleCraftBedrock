@echo off
title GitHub Auto Save
:loop
ping localhost>nul
git status
echo FETCHING...
git fetch
echo.
echo.
git status
echo ADDING...
git add .
echo.
echo.
git status
echo COMMITING...
git commit -m "server auto-save"
echo.
echo.
git status
echo PULLING
git pull
echo.
echo.
git status
echo PUSHING...
git push
echo.
echo.
goto :loop