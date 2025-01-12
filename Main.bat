@echo off
::check for first setup
if not exist "%LOCALAPPDATA%/terminal/base" (
	mkdir "%LOCALAPPDATA%/terminal/base"
	xcopy main "%LOCALAPPDATA%\\terminal\" /E /I /Y
	echo setting up variables
	set main="%LOCALAPPDATA%/terminal"
	set pip=%LOCALAPPDATA%\terminal\base\dependancies\python\scripts\pip.exe
	call update.bat
)
set main="%LOCALAPPDATA%/terminal"
set python="%main%\base\Dependancies\python\python.exe"
set ruby="%main%\base\Dependancies\ruby\bin\ruby.exe"
set pip=%LOCALAPPDATA%\terminal\base\dependancies\python\scripts\pip.exe

:cmd
set /p cmd="%USERNAME%>> "
goto run

:run
:: Split the command into firstWord and remainingInput, DO NOT MOVE IN SCRIPTS!
for /f "tokens=1*" %%a in ("%cmd%") do (
    set "firstWord=%%a" :: Main Commands
    set "remainingInput=%%b" :: Arguments for the commands
)
:: Handle "Update" command
if "%firstWord%"=="Update" (
    %python% "%main%\base\commands\norun\mod-update\main.py"
    set req="%main%\custom"
    call update.bat
    goto cmd
)
if "%firstWord%"=="Reinstall" (
    rmdir "%LOCALAPPDATA%/terminal"
    mkdir "%LOCALAPPDATA%/terminal"
    xcopy main "%LOCALAPPDATA%\\terminal\" /E /I /Y
    goto cmd
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
%cmd%
goto cmd