# Terminal
A simple windows terminal that allows easy access for making custom commands, 

# Instructions:
1. Download the latest version/release or download your prefered version
2. Extract the .zip to any folder you want
3. Run main.bat and wait for the setup process to finish

# How to use:
When the setup process finishes, run main.bat and run any command you want, 
The terminal Supports running python files, ruby files and batch commands.
Aswell as custom commands that can be imported by placing the folder with the commands main.py/bat/rb file in the "to_import" folder
all commands dont need you to specify the file path, just type the name of the command and any arguments you want afterwards in the terminal
and the terminal will sort the rest out for you.

# How to make commands:
If you want to make a custom command, run "_example" in the terminal after your prefered coding language, E.G. "bat_example"
Or, You can refer to these instructions if you dont want to download the terminal:
1. Make a folder with the name of your command, for example, a calculator would be "Calculator" for the folder name
2. Inside the main folder, make a main file with your coding language, for this case its main.py
3. If you need to get the directory for the appdata folder, do "os.getenv('LOCALAPPDATA')" All main use directories of the terminal can be accessed via os.getenv(), as all commands
are ran as a subprocess of the terminal, so if you need the terminal to run a python file, since the terminal doesnt add python to the full PATH, usually you would use "import _name_.py"
or "from _name_.py import _function_" then you can run said function with "function(_arguments_)", 
the main Directories are:
python.exe = %python% or getenv('Python')
ruby.exe = %ruby% or getenv('Ruby')

# Requirements For Custom Commands
1. The Command name HAS to be the name of the folder
2. There *CANNOT* be more than one main.* file, IT WILL run in py rb bat order
3. And thats it for now



