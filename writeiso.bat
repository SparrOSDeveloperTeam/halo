@echo off
; This will become obsolete!
title Halo Portable Edition Maker - Write ISO to USB
if not exist halopem.iso goto noiso
echo.
echo ==================
echo   Halo PEM Setup
echo ==================
echo.
echo What is the destination drive? Use This PC or Computer to check.
echo.
echo (E.g. F:)
echo.
set /p destflashdrive=Drive 
7za e archive.zip -o%DestFlashDrive%\ *.*
goto end
:noiso
echo.
echo ==================
echo   Halo PEM Setup
echo ==================
echo.
echo It seems as though you have not yet created an ISO. Please create an ISO to use this utility.
echo.
pause
exit
:end
cls
echo.
echo ==================
echo   Halo PEM Setup
echo ==================
echo.
echo Setup has completed.
echo.
pause
exit
