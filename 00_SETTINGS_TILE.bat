@echo off
cd /d "%~dp0"
title GNUSim8085 Dark Edition - Settings Tile Control Center
color 0A
cls
:MENU
echo ========================================================================
echo                  GNUSIM8085 DARK EDITION - SETTINGS TILE
echo ========================================================================
echo.
echo    [1] Launch GNUSim8085 (Dark Theme Mode)
echo    [2] Launch GNUSim8085 (FULL SCREEN Dark Mode)
echo    [3] Open Visual Settings Dashboard (Settings.html)
echo    [4] Enable Dark Theme (Adwaita-Dark + Custom GTK CSS)
echo    [5] Open 8085 Opcode Quick Reference Guide
echo    [6] Exit Settings Tile
echo.
echo ========================================================================
set /p choice="Enter your option choice (1-6): "

if "%choice%"=="1" goto LAUNCH
if "%choice%"=="2" goto LAUNCH_FS
if "%choice%"=="3" goto DASHBOARD
if "%choice%"=="4" goto ENABLE_DARK
if "%choice%"=="5" goto GUIDE
if "%choice%"=="6" goto END

echo Invalid choice! Please select 1 to 6.
pause
goto MENU

:LAUNCH
echo Launching GNUSim8085 in Dark Mode...
call "%~dp0gnusim8085.bat"
goto END

:LAUNCH_FS
echo Launching GNUSim8085 in FULL SCREEN Dark Mode...
call "%~dp0gnusim8085.bat" --fullscreen
goto END

:DASHBOARD
echo Opening Visual Settings Dashboard...
start "" "%~dp0Settings.html"
goto MENU

:ENABLE_DARK
echo Applying Dark Theme to GTK3 Configuration...
set GTK_THEME=Adwaita:dark
set GTK_CSD=1
echo Dark Theme configuration applied successfully!
pause
goto MENU

:GUIDE
echo Opening 8085 Quick Reference...
start "" "%~dp0asm-guide.txt"
goto MENU

:END
exit
