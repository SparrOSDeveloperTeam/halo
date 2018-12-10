@echo off
title Halo Portable Edition Maker - Unofficial Patch Installation
echo.
echo ==================
echo   Halo PEM Setup
echo ==================
echo.
echo Would you like to install our custom patch? (Dedicated Server, custom Biks, etc.)
echo.
set /p halocab=Y/n 
if "%halocab%"=="Y" goto installhcab
if "%halocab%"=="y" goto installhcab
if "%halocab%"=="N" goto noinstall
if "%halocab%"=="n" goto noinstall
:installhcab
cls
mkdir temp
del files\autorun.inf
del files\bungie.bik
del files\gearbox.bik
del files\mgs.bik
expand halo.cab -F:* temp\
copy temp\CD_Conf.ini files\
copy temp\haloded.exe files\
copy temp\menu.exe files\
copy temp\Autorun.inf files\
copy temp\bungie.bik files\
copy temp\gearbox.bik files\
copy temp\LinkObj.ini files\
copy temp\mgs.bik files\
mkdir files\RESOURCE
copy temp\01_SCREEN_AUTORUN.JPG files\RESOURCE\
copy temp\button.bti files\RESOURCE\
mkdir files\SOUND
copy temp\SFX_AUTORUN.WAV files\SOUND\
copy temp\SFX_BUTTONCLICK.WAV files\SOUND\
rmdir /q temp
goto end
:noinstall
cls
echo.
echo ==================
echo   Halo PEM Setup
echo ==================
echo.
echo Setup did not install the custom patch.
echo.
echo Press any key to exit . . .
pause >nul
exit
:end
cls
echo.
echo ==================
echo   Halo PEM Setup
echo ==================
echo.
echo Installation of patch completed.
echo.
pause
exit
