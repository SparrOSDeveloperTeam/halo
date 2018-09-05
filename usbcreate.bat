@echo off
title Halo Portable Edition Maker - File creation for USB
echo.
echo ==================
echo   Halo PEM Setup
echo ==================
echo.
echo Welcome to Halo Portable Edition Maker setup! This will extract the Halo game from binaries and copy them to your flashdrive.
echo.
echo For more information, read the readme for more information.
echo.
echo Insert your disc and copy the files to the folder 'files'. When you are finished, press any key to continue. Alternatively you can choose to copy the files to a folder in C: or any folder (without spaces or special chars, not supported)
pause >nul
:retry
cls
echo.
echo ==================
echo   Halo PEM Setup
echo ==================
echo.
echo Will you be using an external source? (E.g. C:\halo)
echo.
set /p choice=Y/n
if "%choice%"=="Y" goto yes
if "%choice%"=="y" goto yes
if "%choice%"=="N" goto no
if "%choice%"=="n" goto no
if not "%choice%"== goto retry
:yes
cls
echo.
echo ==================
echo   Halo PEM Setup
echo ==================
echo.
echo Please specify the location of the Halo CE folder (e.g. C:\halo)
echo.
set /p HPEMSource=Location: 
cls
expand %HPEMSource%\FILESCAB\CAB1.CAB -F:* files\
expand %HPEMSource%\FILESCAB\CAB2.CAB -F:* files\
expand %HPEMSource%\FILESCAB\CAB3.CAB -F:* files\
expand %HPEMSource%\FILESCAB\CAB4.CAB -F:* files\
expand %HPEMSource%\FILESCAB\CAB5.CAB -F:* files\
expand %HPEMSource%\FILESCAB\CAB6.CAB -F:* files\
copy %HPEMSource%\FILES\HALO.EXE files\
