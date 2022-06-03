# else if
# goes until one condition is met; ignoring more below if that condition is met
num1 = 15
num2 = 10
num3 = 20
string1 = "John"
string2 = "Madden"
def compare
 if num1 == num2
   p "equal"
 elsif num1 < num3
  puts "num1 is less than num3" 
 elsif string1 != string2
  puts  "The strings don't match"
 end
 end
 # compare

 #and '&&' or "||"
 
def restaurant
 print "Enter your first name: "
 name = gets.chomp.strip
 print "Enter your age: "
 age = gets.chomp.to_i
 print "Please choose a meal group: "
 category = gets.chomp.strip

if age >= 18 && category == 'snacks' || category == 'meals' # tutorial did not include another condition for 'or', makes Conditions.rb:36: warning: string literal in condition
  puts "Here is the menu for snacks and rice meals #{name}, enjoy your meal!"
  elsif age >= 18 
    puts "Here is the menu for snacks and rice meals #{name}, enjoy your meal!"
elsif age < 18 && age >= 10
  puts "Here is the kids meal #{name}, enjoy your meal!"
else
  puts "Kids 9 below eat for free!"
end
end
#  restaurant

#Loops commented to clean mess
#while loop

# number = 10
# while number <= 20
#   p number
#   sleep 1
#   number += 1
# end

#for loop
# for anything in (10..100) do #fast loop, can put sleep to slow it down
#   puts anything
# end

#downto and upto
# 1000.downto(950) do |var| # also fast
#   puts var
# end
 
# 950.upto(1000) do |var2|
#   puts var2
# end

# each loop

# array_loop = %w(Ruby Programming Skills are vital for Ruby on Rails development. These tutorials will teach you Ruby fast!)

# array_loop.each do |x|
#   puts x
# end