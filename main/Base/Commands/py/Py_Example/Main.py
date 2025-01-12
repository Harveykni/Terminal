# python_example.py

print("Python works! If you're here to find out how to make a custom command with python, this is a walkthrough and example:")

# Commenting style
print("\n# Use '#' to add comments.")

# First argument reference
print("\n# '%1' is a reference to the first argument passed to the command.")

# Command structure explanation
print("\n# Here's a sample script that will allow a user to do things like '<command name> help' and list arguments.")

print("\n# Template for a Python command with examples:")

# Help command example
print("\n# Help command example:")
print("if sys.argv[1] == 'help':")
print("    print('Display help here')")
print("    print('Usage: <command name> help')")
print("    print('List all available arguments')")

# List directory command example
print("\n# List directory command example:")
print("if sys.argv[1] == 'list' or sys.argv[1] == 'ls' or sys.argv[1] == '-l' or sys.argv[1] == '--list':")
print("    print('Lists all files in the current directory')")
print("    os.system('dir')")
print("elif sys.argv[1] == 'lsdir':")
print("    os.system(f'dir {sys.argv[2]}')")
print("    print(f'Lists all files in the directory specified by {sys.argv[2]}')")

# Calculator example
print("\n# Calculator example:")
print("if sys.argv[1] == 'calc' or sys.argv[1] == 'calculate':")
print("    a = int(sys.argv[2])")
print("    b = sys.argv[3]")
print("    c = int(sys.argv[4])")
print("    if b == '+':")
print("        result = a + c")
print("        print(f'The sum of {a} and {c} is: {result}')")

print("\n# Final explanation:")
print("This script is only an example. The main script you create can differ from this.")
print("However, for a command to work, it needs the following:")

print("\n# 1. A main file:")
print("This can be main.py, main.bat, or main.rb. However, DO NOT have multiple main files in the same directory.")
print("Example directory structure:")
print("Calculate/")
print("- main.py")
print("- info.txt")
print("- main/")
print("-- main.py")

print("\n# 2. Inside the command folder, you need an 'info.txt' file.")
print("This will be used when the user runs 'commands -h' or 'commands help'. The info.txt is NOT required, but it must contain the syntax and info of your command.")

print("\n# 3. The command name MUST be the name of the folder.")
print("For example, if your command is called 'calculate', the directory would look like this:")
print("Calculate/")
print("- main.py")
print("- main/")
print("-- main.py")

print("\n# Troubleshooting:")
print("1. If you see an error about multiple 'main' files, ensure that you don't have more than one file named 'main.*' in your command folder.")
print("2. If your command doesn't work, make sure your info.txt is properly formatted and located in the command folder.")
