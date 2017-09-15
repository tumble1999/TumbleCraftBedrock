@echo off
title GitHub Auto Save
:loop
ping localhost>nul
git fetch
git status
git add .
git commit -m "server auto-save"
git pull
git push
goto :loop