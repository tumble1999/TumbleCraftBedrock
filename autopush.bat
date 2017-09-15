@echo off
title GitHub Auto Save
:loop
ping localhost>nul
git status
git fetch
git pull
git add .
git commit -m "server auto-save"
git push
goto :loop