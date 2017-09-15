@echo off
title GitHub Auto Save
:loop
ping localhost>nul
git pull
git add .
git commit -m "server auto-save"
git push
goto :loop