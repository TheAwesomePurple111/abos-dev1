@echo off
mode con: cols=80 lines=25
title Advanced Batch Operating System (Lite) Developer Release 1
color 0f
:startup
cls
echo       A   BBBB   OOO   SSS
echo      A A  B   B O   O S
echo     AAAAA BBBB  O   O  SSS
echo     A   A B   B O   O     S
echo     A   A BBBB   OOO   SSS
echo.
echo Advanced Batch Operating System
echo       Developer Release 1
timeout /t 10 /nobreak >nul
cls
echo Welcome, user!
timeout /t 1 /nobreak >nul
echo You are running ABOS Lite Developer Release 1.
timeout /t 5 /nobreak >nul
:menu
title Advanced Batch Operating System (Lite) Developer Release 1
cls
echo What do you wanna do today?
cmdmenusel 0ff0 "Run test app" "Do something" "Show inner body" "Show version" "Config" "Help" "Exit"
if %ERRORLEVEL% == 1 call C:\Users\purpl\desktop\DESKTO~1\ABOS\007.1\app\testapp.bat
if %ERRORLEVEL% == 2 goto congrats
if %ERRORLEVEL% == 3 goto innerbody
if %ERRORLEVEL% == 4 goto version
if %ERRORLEVEL% == 5 goto config
if %ERRORLEVEL% == 6 goto help
if %ERRORLEVEL% == 7 goto reboot
:filler
rem this is needed to make sure apps exit correctly
goto menu 
:congrats
cls
echo Congrats! You found the secret!
pause >nul
goto menu
:innerbody
cls
echo Yerevan
pause >nul
cls
echo Advanced Batch OS Framework, codename "Warsaw", version 0.04.
pause >nul
goto menu
:version
cls
echo Advanced Batch OS, codename "Eins".
pause >nul
goto menu
:config
cls
cmdmenusel 0ff0 "Change Resolution" "Go Back To Menu"
if %ERRORLEVEL%==1 goto screenres
if %ERRORLEVEL%==2 goto menu
:screenres
cmdmenusel 0ff0 "40x25" "80x25" "Go Back"
if %ERRORLEVEL%==1 goto 4025
if %ERRORLEVEL%==2 goto 8025
if %ERRORLEVEL%==3 goto config
:4025
echo Automatically restarting to set the resolution...
timeout /t 7 /nobreak >nul
cls
mode con: cols=40 lines=25
goto startup
:8025
echo Automatically restarting to set the resolution...
timeout /t 7 /nobreak >nul
cls
mode con: cols=80 lines=25
goto startup
:temporary
echo We're sorry, but this function is nonexistent right now. 
pause >nul rem no longer needed
goto menu
:help
cls
echo 1. Run test app - Runs a test application.
echo 2. Do something - Self-explanatory.
echo 3. Show inner body - Shows a message.
echo 4. Show version - Shows the version of Advanced Batch OS.
echo 5. Help - Shows the help.
echo 6. Config - Allows you to change configurations.
echo 7. Exit - Prepares the operating evironment for the next session.
echo Press any key to go back.
pause >nul
goto menu
:reboot
cls
echo       A   BBBB   OOO   SSS
echo      A A  B   B O   O S
echo     AAAAA BBBB  O   O  SSS
echo     A   A B   B O   O     S
echo     A   A BBBB   OOO   SSS
echo.
echo Advanced Batch Operating System
echo       Developer Release 1
echo.
echo Advanced Batch OS is preparing for the next session...
timeout /t 7 /nobreak >nul
cls
echo It's now safe to restart or exit.
echo What do you want to do?
cmdmenusel 0ff0 "Reboot" "Shutdown"
if %ERRORLEVEL% == 1 goto truereboot
if %ERRORLEVEL% == 2 goto trueexit
:truereboot
cls
echo Advanced Batch OS is restarting in 3
timeout /t 1 /nobreak >nul
cls
echo Advanced Batch OS is restarting in 2
timeout /t 1 /nobreak >nul
cls
echo Advanced Batch OS is restarting in 1
timeout /t 1 /nobreak >nul
cls
goto startup
:trueexit
cls
echo       A   BBBB   OOO   SSS
echo      A A  B   B O   O S
echo     AAAAA BBBB  O   O  SSS
echo     A   A B   B O   O     S
echo     A   A BBBB   OOO   SSS
echo.
echo Advanced Batch Operating System
echo       Developer Release 1
echo.
echo Advanced Batch OS is shutting down...
timeout /t 7 /nobreak >nul
cls
echo Thanks for using Advanced Batch OS!
echo Press any key to exit.
pause >nul