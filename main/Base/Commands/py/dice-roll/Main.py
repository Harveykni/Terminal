import random

def dice_roller():
    print("Welcome to the Dice Roller!")
    print("Type 'exit' to quit.")

    while True:
        user_input = input("Enter the number of sides on the die (e.g., 6): ")
        if user_input.lower() == "exit":
            print("Goodbye!")
            break
        try:
            sides = int(user_input)
            roll = random.randint(1, sides)
            print(f"You rolled a {roll} on a {sides}-sided die.")
        except ValueError:
            print("Please enter a valid number.")

if __name__ == "__main__":
    dice_roller()
