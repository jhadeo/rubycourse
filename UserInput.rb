system "cls"
# Converting
value = "34 test".to_f # converts to float, puts 34.0 can converted to interger,string,symbol,etc.
# puts value

# Getting user input!
def user_input
 print "Enter your name. "

  input = gets.chomp.strip # <- removes newline character and strips spaces
  if input == "" # fixing the blank input issue
    puts "No input, try again!"
    sleep 2 # sleep pauses the system for given time, not useful here but useful in rails
    puts "Grabbing milk"
    sleep 1
    puts "Grabbing milk."
    sleep 1
    puts "Grabbing milk.."
    sleep 1
    puts "Grabbing milk..."
    sleep 2
    user_input
  else
  first_letter = input.split(//)[0] # puts it in an array, gets the first in the array
  capital_first = first_letter.upcase
  final_input = input.sub(first_letter, capital_first)

  puts "Hello #{final_input}, your name has #{input.size} character/s."
  end
end
user_input
