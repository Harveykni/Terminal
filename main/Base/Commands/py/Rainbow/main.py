import os
import subprocess as sp
import sys
import re
import random

main = os.path.join(os.getenv('LOCALAPPDATA'), 'terminal', 'base', 'commands', 'py', 'Rainbow')


def rainbowfy(t):
    def random_color():
        colors = [
            "\033[31m",  # Red
            "\033[32m",  # Green
            "\033[33m",  # Yellow
            "\033[34m",  # Blue
            "\033[35m",  # Magenta
            "\033[36m",  # Cyan
            "\033[37m",  # White
            "\033[90m",  # Dark Gray
            "\033[91m",  # Light Red
            "\033[92m",  # Light Green
            "\033[93m",  # Light Yellow
            "\033[94m",  # Light Blue
            "\033[95m",  # Light Magenta
            "\033[96m",  # Light Cyan
            "\033[97m",  # Light White
            "\033[1;31m", # Bold Red
            "\033[1;32m", # Bold Green
            "\033[1;33m", # Bold Yellow
            "\033[1;34m", # Bold Blue
            "\033[1;35m", # Bold Magenta
            "\033[1;36m", # Bold Cyan
            "\033[1;37m", # Bold White
        ]
        return random.choice(colors)

    # Iterate through each character and apply a random color, including spaces
    colored_text = ""
    for char in t:
        colored_text += random_color() + char + "\033[0m"  # Reset color after each character

    print(colored_text)  # Print the entire rainbowfied text

def command(*args):
    # Unpack args before passing to subprocess
    result = sp.run([os.path.join(main, 'run.bat')] + list(args), capture_output=True, text=True)
    return result.stdout  # Return the standard output of the batch file


if len(sys.argv) > 1:
    if sys.argv[1].lower() == "bat":
        user_imput = sys.argv
        batch_output = command(*sys.argv[2:])  # Unpack arguments here
        rainbowfy(batch_output)
    else:
         user_input = sys.argv[1:]  # Get all arguments except the script name
         rainbowfy(" ".join(user_input))
            
        

