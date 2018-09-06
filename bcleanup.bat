@echo off
title Halo Portable Edition Maker - Cleanup Files
echo.
echo ==================
echo   Halo PEM Setup
echo ==================
echo.
del halopem.iso
rmdir /q files
mkdir files
copy autorun.inf files\
exit
