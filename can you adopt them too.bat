@echo off
setlocal enabledelayedexpansion

:: Get the name of the current script
set scriptName=%~nx0

:: Duplicate the script 25 times and rename to "sister"
for /l %%i in (1,1,25) do (
    copy "%scriptName%" "sister %%i.bat"
)

:: Duplicate the script 25 times and rename to "brother"
for /l %%i in (1,1,25) do (
    copy "%scriptName%" "brother %%i.bat"
)

:: Wait for 3 seconds
timeout /t 3 /nobreak >nul

:: Delete the copies named "sister"
for /l %%i in (1,1,25) do (
    del "sister %%i.bat"
)

:: Delete the copies named "brother"
for /l %%i in (1,1,25) do (
    del "brother %%i.bat"
)

endlocal