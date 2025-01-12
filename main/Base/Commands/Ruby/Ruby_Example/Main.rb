# ruby_example.rb

puts "Ruby works! If you're here to find out how to make a custom command, this is a walkthrough and example:"

# Commenting style
puts "\n# Use '#' to add comments."

# First argument reference
puts "\n# '%1' is a reference to the first argument passed to the command."

# Command structure explanation
puts "\n# Here's a sample script that will allow a user to do things like '<command name> help' and list arguments."

puts "\n# Template for a Ruby command with examples:"

# Help command example
puts "\n# Help command example:"
puts "if ARGV[0] == 'help'"
puts "  puts 'Display help here'"
puts "  puts 'Usage: <command name> help'"
puts "  puts 'List all available arguments'"
puts "end"

# List directory command example
puts "\n# List directory command example:"
puts "if ARGV[0] == 'list' || ARGV[0] == 'ls' || ARGV[0] == '-l' || ARGV[0] == '--list'"
puts "  puts 'Lists all files in the current directory'"
puts "  system('dir')"
puts "elsif ARGV[0] == 'lsdir'"
puts "  system('dir #{ARGV[1]}')"
puts "  puts 'Lists all files in the directory specified by #{ARGV[1]}'"
puts "end"

# Calculator example
puts "\n# Calculator example:"
puts "if ARGV[0] == 'calc' || ARGV[0] == 'calculate'"
puts "  a = ARGV[1].to_i"
puts "  b = ARGV[2]"
puts "  c = ARGV[3].to_i"
puts "  if b == '+'"
puts "    result = a + c"
puts "    puts 'The sum of #{a} and #{c} is: #{result}'"
puts "  end"
puts "end"

puts "\n# Final explanation:"
puts "This script is only an example. The main script you create can differ from this."
puts "However, for a command to work, it needs the following:"

puts "\n# 1. A main file:"
puts "This can be main.rb, main.bat, or main.py. However, DO NOT have multiple main files in the same directory."
puts "Example directory structure:"
puts "Calculate/"
puts "- main.rb"
puts "- info.txt"
puts "- main/"
puts "-- main.rb"

puts "\n# 2. Inside the command folder, you need an 'info.txt' file."
puts "This will be used when the user runs 'commands -h' or 'commands help'. The info.txt is NOT required, but it must contain the syntax and info of your command."

puts "\n# 3. The command name MUST be the name of the folder."
puts "For example, if your command is called 'calculate', the directory would look like this:"
puts "Calculate/"
puts "- main.rb"
puts "- main/"
puts "-- main.rb"

puts "\n# Troubleshooting:"
puts "1. If you see an error about multiple 'main' files, ensure that you don't have more than one file named 'main.*' in your command folder."
puts "2. If your command doesn't work, make sure your info.txt is properly formatted and located in the command folder."
