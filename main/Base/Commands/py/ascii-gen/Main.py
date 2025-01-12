from pyfiglet import Figlet

def ascii_art_generator():
    print("Welcome to the ASCII Art Generator!")
    print("Type 'exit' to quit.")

    f = Figlet()

    while True:
        text = input("Enter text to convert to ASCII art: ")
        if text.lower() == "exit":
            print("Goodbye!")
            break
        print(f.renderText(text))

if __name__ == "__main__":
    ascii_art_generator()
