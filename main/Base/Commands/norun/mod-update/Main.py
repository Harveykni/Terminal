import os
import ast

main1 = os.getenv('LOCALAPPDATA')
main2 = os.path.join(main1, 'terminal')
builtin = os.path.join(main2, 'base', 'commands')
cust = os.path.join(main2, 'custom')

def extract_modules_from_file(file_path):
    modules = []
    try:
        with open(file_path, 'r') as file:
            tree = ast.parse(file.read(), filename=file_path)
            for node in ast.walk(tree):
                if isinstance(node, ast.Import):
                    for alias in node.names:
                        modules.append(alias.name)
                elif isinstance(node, ast.ImportFrom):
                    modules.append(node.module)
    except Exception as e:
        print(f"Error: {e}")
    return modules

def scan_directories_for_python_files(directories):
    python_files = []
    for directory in directories:
        for root, _, files in os.walk(directory):
            for file in files:
                if file.endswith('.py'):
                    python_files.append(os.path.join(root, file))
    return python_files

def save_modules_to_file(modules, file_name="req.txt"):
    req_file_path = os.path.join(main2, 'base', 'req.txt')  
    try:
        with open(req_file_path, 'w') as f:
            for module in sorted(set(modules)):
                f.write(module + '\n')
        print(f"Modules saved to {req_file_path}")
    except Exception as e:
        print(f"Error saving {file_name}: {e}")

directories_to_scan = [builtin, cust]  
python_files = scan_directories_for_python_files(directories_to_scan)

all_modules = []

for python_file in python_files:
    modules = extract_modules_from_file(python_file)
    all_modules.extend(modules)

save_modules_to_file(all_modules)