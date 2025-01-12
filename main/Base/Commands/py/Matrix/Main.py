import os
import subprocess as sp
import sys
import random
import time

# Function for Matrix Effect (Normal)
def matrix_normal():
    columns = os.get_terminal_size().columns
    while True:
        print(" ".join(random.choice("01") for _ in range(columns)))
        time.sleep(0.05)

# Function for Matrix Effect (Normal Colored)
def matrix_normal_colored():
    columns = os.get_terminal_size().columns
    def random_color():
        colors = [
            "\033[31m",  # Red
            "\033[32m",  # Green
            "\033[33m",  # Yellow
            "\033[34m",  # Blue
            "\033[35m",  # Magenta
            "\033[36m",  # Cyan
            "\033[37m",  # White
        ]
        return random.choice(colors)

    while True:
        line = " ".join(random.choice([random_color() + "0" + "\033[0m", random_color() + "1" + "\033[0m"]) for _ in range(columns))
        print(line)
        time.sleep(0.05)

# Function for Matrix Effect (Letters)
def matrix_letters():
    columns = os.get_terminal_size().columns
    characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    while True:
        print(" ".join(random.choice(characters) for _ in range(columns)))
        time.sleep(0.05)

# Function for Matrix Effect (Colored Letters)
def matrix_letters_colored():
    columns = os.get_terminal_size().columns
    characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    
    def random_color():
        colors = [
            "\033[31m",  # Red
            "\033[32m",  # Green
            "\033[33m",  # Yellow
            "\033[34m",  # Blue
            "\033[35m",  # Magenta
            "\033[36m",  # Cyan
            "\033[37m",  # White
        ]
        return random.choice(colors)

    while True:
        line = " ".join(random_color() + random.choice(characters) + "\033[0m" for _ in range(columns))
        print(line)
        time.sleep(0.05)

# Ensure that there is an argument before accessing sys.argv[1]
if len(sys.argv) > 1:
    if sys.argv[1].lower() == "-l":
        matrix_letters()
    elif sys.argv[1].lower() == "-cl":
        matrix_letters_colored()
    elif sys.argv[1].lower() == "-c":
        matrix_normal_colored()
    elif sys.argv[1].lower() == "-h" or sys.argv[1].lower() == "--help":
        print("Help Usage:")
        print("-c: adds a random color over each number")
        print("-l: allows letters and numbers")
        print("-cl: adds a random color over each number and letter")
        print("Leaving no arguments or an invalid argument will just run the normal matrix")
    else:
        print(f"Invalid argument: {sys.argv[1]}")
        print("Use '-h' or '--help' for usage information.")
else:
    matrix_normal()  # Default behavior if no arguments are passed
