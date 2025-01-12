import random

def fortune():
    quotes = [
        "If at first you don’t succeed, redefine success.",
        "Life is short. Smile while you still have teeth.",
        "The only limit to our realization of tomorrow is our doubts of today.",
        "Do not take life too seriously. You will never get out of it alive."
    ]
    print(random.choice(quotes))

# Call the function
fortune()
