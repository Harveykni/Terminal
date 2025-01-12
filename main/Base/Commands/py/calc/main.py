def calculator():
    print("Welcome to Calculator!")
    print("Type 'quit' to exit.")

    while True:
        expression = input("Enter an expression (e.g., 2 + 2): ")
        if expression.lower() == "quit":
            print("Goodbye!")
            break
        try:
            result = eval(expression)
            print(f"Result: {result}")
        except Exception as e:
            print(f"Error: {e}")

if __name__ == "__main__":
    calculator()
   