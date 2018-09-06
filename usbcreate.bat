@echo off
set halofiles=cdfiles
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
echo Insert your disc and copy the files to the folder 'cdfiles'. When you are finished, press any key to continue. Alternatively you can choose to copy the files to a folder in C: or any folder (without spaces or special chars, not supported)
pause >nul
if exist halopem.iso goto isooptions
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
if not exist files\MAPS\*.map goto yes
expand %HPEMSource%\FILESCAB\CAB2.CAB -F:* files\
expand %HPEMSource%\FILESCAB\CAB3.CAB -F:* files\
expand %HPEMSource%\FILESCAB\CAB4.CAB -F:* files\
expand %HPEMSource%\FILESCAB\CAB5.CAB -F:* files\
expand %HPEMSource%\FILESCAB\CAB6.CAB -F:* files\
copy %HPEMSource%\FILES\HALO.EXE files\
goto halocab
:no
cls
expand %HaloFiles%\FILESCAB\CAB1.CAB -F:* files\
if not exist files\MAPS\*.map goto retry
expand %HaloFiles%\FILESCAB\CAB2.CAB -F:* files\
expand %HaloFiles%\FILESCAB\CAB3.CAB -F:* files\
expand %HaloFiles%\FILESCAB\CAB4.CAB -F:* files\
expand %HaloFiles%\FILESCAB\CAB5.CAB -F:* files\
expand %HaloFiles%\FILESCAB\CAB6.CAB -F:* files\
copy %HaloFiles%\FILES\HALO.EXE files\
goto halocab
:halocab
cls
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
if "%halocab%"=="N" goto writeusb
if "%halocab%"=="n" goto writeusb
:installhcab
cls
mkdir temp
del files\autorun.inf
del files\bungie.bik
del files\gearbox.bik
del files\mgs.bik
expand halo.cab -F:* temp\
copy temp\haloded.exe files\
copy temp\menu.exe files\
copy temp\Autorun.inf files\
copy temp\bungie.bik files\
copy temp\gearbox.bik files\
copy temp\LinkObj.ini files\
copy temp\mgs.bik
mkdir files\RESOURCE
copy temp\RESOURCE\01_SCREEN_AUTORUN.JPG files\RESOURCE\
copy temp\RESOURCE\button.bti files\RESOURCE\
mkdir files\SOUND
copy temp\SOUND\SFX_AUTORUN.WAV files\
copy temp\SOUND\SFX_BUTTONCLICK.WAV files\
rmdir /q temp
goto writeusb
:witeusb
cls
echo.
echo ==================
echo   Halo PEM Setup
echo ==================
echo.
echo The files have been successfully installed. Choose an option.
echo.
echo 1. Create a flashdrive now.
echo 2. Save the files in a ISO for later use/backup.
echo 3. Create a flashdrive now AND save the files in a ISO for later use/backup.
echo.
set /p flash=Choice: (1,2,3) 
if "%flash%"=="1" goto createufd
if "%flash%"=="2" goto createiso
if "%flash%"=="3" goto doemall
:createufd
cls
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
xcopy files %DestFlashDrive%\ /E /K
rmdir /q files
mkdir files
copy autorun.inf files\
goto end
:createiso
cls
echo.
echo ==================
echo   Halo PEM Setup
echo ==================
echo.
mkisofs -o halopem.iso files
rmdir /q files
mkdir files
copy autorun.inf files\
goto end
:doemall
cls
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
xcopy files %DestFlashDrive%\ /E /K
cls
echo.
echo ==================
echo   Halo PEM Setup
echo ==================
echo.
mkisofs -o halopem.iso files
rmdir /q files
mkdir files
copy autorun.inf files\
goto end
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
:isooptions
cls
echo.
echo ==================
echo   Halo PEM Setup
echo ==================
echo.
echo We have detected you have created an ISO. You can do one of the following:
echo.
echo 1. Write ISO to Flash Drive
echo 2. Remove ISO and redo setup
echo 3. Exit
echo.
set /p choice=Your choice: (1,2,3) 
if "%choice%"=="1" goto writeiso
if "%choice%"=="2" goto cleanup
if "%choice%"=="3" goto exit
if not "%chocie%"== goto isooptions
:writeiso
start writeiso.exe
goto exit
:cleanup
start bcleanup.exe
goto exit
:exit
exit
