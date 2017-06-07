# a variable for people
types_of_people = 10
# variable for a string containing anothe variable
x = "There are #{types_of_people} types of people."
#variables
binary = "binary"
do_not = "don't"
y = "Those who know #{binary} and those who #{do_not}."

#putting some stuff on terminal
puts x
puts y

#puting more stuff on console using the previous variables in strings
puts "I said: #{x}."
puts "I also said: '#{y}'."

#look a variable equaling a boolean ad using it in a variable with a string
hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

#goes to the terminal
puts joke_evaluation

#These variables are strings
w = "This is the left side of..."
e = "a string with a right side."

#That we concatinated 
puts w + e
