@echo off
if "%1"=="" (
    echo No argument passed to the batch file.
    exit /b
)
for /f "tokens=1*" %%a in ("%cmd%") do (
    set "firstWord=%%a" :: Main Commands
    set "remainingInput=%%b" :: Arguments for the commands
)
if "%firstWord%"=="ruby" (
    %ruby% -e "%remainingInput%"
    goto cmd
)
:: Handle Base batch commands
if exist "%main%\base\commands\bat\%firstWord%\main.bat" (
    call "%main%\base\commands\bat\%firstWord%\main.bat" %remainingInput%
    goto cmd
)
:: Handle Base Python commands
if exist "%main%\base\commands\py\%firstWord%\main.py" (
    "%python%" "%main%\base\commands\py\%firstWord%\main.py" %remainingInput%
    goto cmd
)
::handle Base ruby commands
if exist "%main%\base\commands\Ruby\%firstWord%\main.rb" (
    call "%ruby%" "%main%\base\commands\ruby\%firstWord%\main.rb" %remainingInput%
    goto cmd
)
::Handle custom commands
if exist "%main%\custom\py\%firstWord%\main.py" (
    "%python%" "%main%\custom\py\firstword%\main.py" %remainingInput%
    goto cmd
)
if exist "%main%\custom\ruby\%firstWord%\main.rb" (
     call "%ruby%" "%main%\custom\ruby\%firstWord%\main.rb" %remainingInput%
     goto cmd
)
if exist "%main%\custom\bat\%firstword%\main.bat" (
    call "%main%\custom\bat\%firstWord%\main.bat" %remainingInput%
    pause
    goto cmd
)
:: Default to executing as a regular command
%1 %2 %3 %4 %5
goto cmd