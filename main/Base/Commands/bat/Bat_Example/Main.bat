@echo off
echo bat works! If you're here to find out how to make a custom command with batch, this is a walkthrough and example:

:: Commenting style
echo ":: Use '::' to add comments."
echo
:: First argument reference
echo ":: %1 is a reference to the first argument passed to the command."
echo
:: Command structure explanation
echo ":: Here's a sample script that will allow a user to do things like '<command name> help' and list arguments."

echo ":: Template for a batch command with examples:"

:: Help command example
echo "if %%1 == 'help' ("
echo "    echo Display help here"
echo "    echo Usage: <command name> help"
echo "    echo List all available arguments"
echo ")"

:: List directory command example
echo "if %%1 == 'list' or %%1 == 'ls' or %%1 == '-l' or %%1 == '--list' ("
echo "    dir"
echo "    echo Lists all files in the current directory"
echo ") else ("
echo "    if %%1 == 'lsdir' ("
echo "        dir %%2"
echo "        echo Lists all files in the directory specified by %%2"
echo "    )"
echo ")"

:: Calculator example
echo "if %%1 == 'calc' or %%1 == 'calculate' ("
echo "    set a=%%2"
echo "    set b=%%3"
echo "    set c=%%4"
echo "    if %%b == '+' ("
echo "        set /a sum=(%%a + %%c)"
echo "        echo The sum of %%a and %%c is: %%sum"
echo "    )"
echo ")"

:: Final explanation
echo "This script is only an example, the main script you create can differ from this."
echo "However, for a command to work, it needs the following:"
echo ""
echo "1. A main file: This can be main.bat, main.py, or main.rb. However, DO NOT have multiple main files in the same directory."
echo "   The terminal will only be able to run one 'main' file per directory, so be careful!"
echo "   Example directory structure:"
echo "   Calculate/"
echo "   - main.bat"
echo "   - info.txt"
echo "   - main/"
echo "   -- main.py"
echo""
echo "2. Inside the command folder, you need an 'info.txt' file. This will be used when the user runs 'commands -h' or 'commands help', the info.txt is NOT required, but it must be in the main directory and contain the syntax and info of your command."
echo
echo "3. The command name MUST be the name of the folder. For example, if your command is called 'calculate', the directory would look like this:"
echo "   Calculate/"
echo "   - main.bat"
echo "   - main/"
echo "   -- main.py"
echo ""
echo "The terminal will run the main.bat file. From there, the batch file can run the Python or Ruby file using:"
echo "   '%python%' '/main/main.py' or '%ruby%' '/main/main.rb'."
echo ""
echo "In your batch file, you can get arguments like this:"
echo "   set temp1=%%1"
echo "   set temp2=%%2"
echo ""
echo "To access these variables in Python, use 'os.getenv()' as follows:"
echo "   import os"
echo "   a = os.getenv('temp1')"
echo "   b = os.getenv('temp2')"

echo.
echo ":: Troubleshooting:"
echo "1. If you see an error about multiple 'main' files, ensure that you don't have more than one file named 'main.*' in your command folder."
echo "2. If your command doesn't work, make sure your info.txt is properly formatted and located in the command folder."