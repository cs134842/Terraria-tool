@echo off
:menu
cls
echo Options:
echo A) Backup save
set /p optionA=
if %optionA%==A goto backup
goto menu
:backup
cls
set /p saveDestination=Save backup to directory:
xcopy "C:\Users\%username%\Documents\My Games\Terraria" %saveDestination% /E
pause
goto menu
