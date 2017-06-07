#ask for a specified argument file
input_file = ARGV.first

#prints out what's in the file
def print_all(f)
  puts f.read
end

#function that moves you to the start of the file (in bytes)
def rewind(f)
  f.seek(0)
end

#function that prints out a specified line number and then a line of text
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

current_file = open(input_file)

puts "First let's print the whole file:\n"

print_all(current_file)

puts "Now let's rewind, kind of  like a tape."

rewind(current_file)

puts "Let's print three lines:"

#prints  the current line and then the line at that poinnt in the file
current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)
