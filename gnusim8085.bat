@echo off
cd /d "%~dp0"
set XDG_DATA_DIRS=%~dp0share;%XDG_DATA_DIRS%
set GTK_THEME=Adwaita:dark
set GTK_CSD=1

if "%1"=="--fullscreen" goto FULLSCREEN
if "%1"=="-f" goto FULLSCREEN
if "%1"=="--maximized" goto FULLSCREEN

start "" "%~dp0bin\gnusim8085.exe"
goto END

:FULLSCREEN
start /max "" "%~dp0bin\gnusim8085.exe"

:END