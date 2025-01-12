import sys
import os

# Add the parent directory containing the 'Data' folder to sys.path
base_path = os.path.abspath(os.path.join(os.path.dirname(__file__), '../../../..'))
sys.path.append(base_path)

# Import Player after modifying sys.path
from os.path.abspath('../../../../../Data/game/Player.py') import Player

# Example usage
player = Player()
print(player.stats)