#defines the function cheese_and_crackers
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket. \n"
end

#calls the function cheese_and_crackers directly with arguments
puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)


#uses variables from script to call cheese_and_crackers
puts "OR, we can use varaibles from out script:"
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)


#uses math to call cheese_and_crackers
puts "We can even do math inside too:"
cheese_and_crackers(10 +20, 5 + 6)


#uses math and variables to cal cheese_and_crackers
puts "and we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
