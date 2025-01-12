def todo_list_manager():
    todos = []
    print("Welcome to the Todo List Manager!")

    while True:
        print("\nOptions:")
        print("1. View todos")
        print("2. Add a todo")
        print("3. Remove a todo")
        print("4. Exit")

        choice = input("Choose an option: ")

        if choice == "1":
            if todos:
                print("\nYour Todos:")
                for idx, todo in enumerate(todos, 1):
                    print(f"{idx}. {todo}")
            else:
                print("\nYour todo list is empty.")
        elif choice == "2":
            new_todo = input("Enter a new todo: ")
            todos.append(new_todo)
            print("Todo added!")
        elif choice == "3":
            try:
                index = int(input("Enter the number of the todo to remove: "))
                if 0 < index <= len(todos):
                    removed = todos.pop(index - 1)
                    print(f"Removed: {removed}")
                else:
                    print("Invalid index.")
            except ValueError:
                print("Please enter a valid number.")
        elif choice == "4":
            print("Goodbye!")
            break
        else:
            print("Invalid choice. Please try again.")

if __name__ == "__main__":
    todo_list_manager()
