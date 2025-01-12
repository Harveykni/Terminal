import random

def random_quote_generator():
    quotes = [
        "The best way to predict the future is to invent it. - Alan Kay",
        "Life is what happens when you're busy making other plans. - John Lennon",
        "The only limit to our realization of tomorrow is our doubts of today. - Franklin D. Roosevelt",
        "Do not take life too seriously. You will never get out of it alive. - Elbert Hubbard"
    ]

    print("Welcome to the Random Quote Generator!")
    print("Type 'next' for another quote, or 'exit' to quit.")

    while True:
        command = input("Your command: ").lower()
        if command == "exit":
            print("Goodbye!")
            break
        elif command == "next":
            print("\n" + random.choice(quotes))
        else:
            print("Invalid command. Type 'next' or 'exit'.")

if __name__ == "__main__":
    random_quote_generator()
