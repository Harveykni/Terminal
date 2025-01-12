def unit_converter():
    print("Welcome to the Unit Converter!")
    print("Type 'exit' to quit.")

    conversions = {
        "km_to_miles": 0.621371,
        "miles_to_km": 1.60934,
        "kg_to_pounds": 2.20462,
        "pounds_to_kg": 0.453592
    }

    while True:
        print("\nAvailable conversions:")
        print("1. km_to_miles")
        print("2. miles_to_km")
        print("3. kg_to_pounds")
        print("4. pounds_to_kg")
        print("5. Exit")

        choice = input("Choose a conversion: ").lower()
        if choice == "exit" or choice == "5":
            print("Goodbye!")
            break

        if choice not in conversions:
            print("Invalid choice. Please try again.")
            continue

        try:
            value = float(input(f"Enter the value to convert ({choice}): "))
            result = value * conversions[choice]
            print(f"Converted value: {result}")
        except ValueError:
            print("Please enter a valid number.")

if __name__ == "__main__":
    unit_converter()
