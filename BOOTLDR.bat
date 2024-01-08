@echo off
mode con: cols=80 lines=25
title Bootloader
:bootload
echo [A]BOS or [E]xit?
choice /c ae /n >nul
if %ERRORLEVEL%==1 call ABOS.bat
if %ERRORLEVEL%==2 exit
:exit
echo Exiting...
timeout /t 1 /nobreak >nul