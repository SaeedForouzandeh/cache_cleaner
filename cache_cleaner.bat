@echo off
title Cache Cleaner
color 0a

:MENU
cls
echo SF Cache Cleaner Menu SF
echo 1. Clean System Temp Files
echo 2. Clean Browser Cache (Chrome, Firefox, Edge)
echo 3. Clean Windows Update Cache
echo 4. Clean All
echo 5. Exit
set /p choice=Enter your choice (1-5): 

if %choice%==1 goto TEMP_FILES
if %choice%==2 goto BROWSER_CACHE
if %choice%==3 goto UPDATE_CACHE
if %choice%==4 goto CLEAN_ALL
if %choice%==5 exit
goto MENU

:TEMP_FILES
echo Cleaning system temp files...
del /q /s "%temp%\*" >nul 2>&1
del /q /s "C:\Windows\Temp\*" >nul 2>&1
echo [%date% %time%] System temp files cleaned! >> "%USERPROFILE%\Desktop\cache_clean_report.txt"
goto END

:BROWSER_CACHE
echo Cleaning browser cache...
del /q /s "%LocalAppData%\Google\Chrome\User Data\Default\Cache\*" >nul 2>&1
del /q /s "%AppData%\Mozilla\Firefox\Profiles\*\cache\*" >nul 2>&1
del /q /s "%LocalAppData%\Microsoft\Edge\User Data\Default\Cache\*" >nul 2>&1
echo [%date% %time%] Browser cache cleaned! >> "%USERPROFILE%\Desktop\cache_clean_report.txt"
goto END

:UPDATE_CACHE
echo Cleaning Windows Update cache...
net stop wuauserv >nul 2>&1
del /q /s "C:\Windows\SoftwareDistribution\Download\*" >nul 2>&1
net start wuauserv >nul 2>&1
echo [%date% %time%] Windows Update cache cleaned! >> "%USERPROFILE%\Desktop\cache_clean_report.txt"
goto END

:CLEAN_ALL
echo Cleaning all caches...
del /q /s "%temp%\*" >nul 2>&1
del /q /s "C:\Windows\Temp\*" >nul 2>&1
del /q /s "%LocalAppData%\Google\Chrome\User Data\Default\Cache\*" >nul 2>&1
del /q /s "%AppData%\Mozilla\Firefox\Profiles\*\cache\*" >nul 2>&1
del /q /s "%LocalAppData%\Microsoft\Edge\User Data\Default\Cache\*" >nul 2>&1
net stop wuauserv >nul 2>&1
del /q /s "C:\Windows\SoftwareDistribution\Download\*" >nul 2>&1
net start wuauserv >nul 2>&1
echo [%date% %time%] All caches cleaned! >> "%USERPROFILE%\Desktop\cache_clean_report.txt"
goto END

:END
echo.
echo SF Cleaning completed successfully!
echo Results saved in Desktop\cache_clean_report.txt.
pause
goto MENU