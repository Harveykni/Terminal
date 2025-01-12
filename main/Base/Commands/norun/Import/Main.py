from genericpath import exists
import os
import shutil

import1 = os.getenv('Dir')
source = os.path.join(import1, "to_import")
main = os.getenv('main')
destination1 = os.path.join(main, "custom", "Py")
destination2 = os.path.join(main, "custom", "Bat")
destination3 = os.path.join(main, "custom", "ruby")
os.makedirs(destination2, exist_ok=True)
os.makedirs(destination1, exist_ok=True)
python = os.getenv('python')
mod_update = os.path.join(main, "base", "commands", "norun", "mod-update")

for item in os.listdir(source):
    if os.path.exists(os.path.join(source, item, 'main.bat')):
        item_path = os.path.join(source, item)
        shutil.move(item_path, destination2)
    elif os.path.exists(os.path.join(source, item, 'main.py')):
        item_path = os.path.join(source, item)
        shutil.move(item_path, destination1)
    elif os.path.exists(os.path.join(source, item, 'main.rb')):
        item_path = os.path.join(source, item)
        shutil.move(item_path, destination3)
    else:
        print(f"Please make sure {item} contains a main.py or a main.bat")
exit