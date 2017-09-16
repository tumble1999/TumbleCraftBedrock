@echo off
:loop

title GitHub Auto Save
set status=(
git status
echo #
git status -s
)
set fetch=git fetch
set add=git add
set commit=git commit
set pull=git pull
set push=git push

ping localhost>nul
%status%
echo FETCHING...
%fetch%
echo.
echo.
%status%
echo ADDING...
%add% .
echo.
echo.
%status%
echo COMMITING...
%commit% -m "server auto-save"
echo.
echo.
%status%
echo PULLING
%pull%
echo.
echo.
%status%
echo PUSHING...
%push%
echo.
echo.
goto :loop
