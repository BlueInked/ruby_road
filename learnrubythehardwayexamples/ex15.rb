#sets the variable filename to the argument variable that we give it in the command
filename = ARGV.first

#opens the file
txt = open(filename)

#puts the name of the file and the content of the file in the terminal
puts "Here's your file #{filename}:"
print txt.read

#closes the file
txt.close()

#asks for the filename again
print "Type the filename again: "
file_again = $stdin.gets.chomp

#opens the file
txt_again = open(file_again)

#prints the content on the terminal
print txt_again.read

#closes the file
txt_again.close()
