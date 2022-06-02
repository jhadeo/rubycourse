# If else review app
# make a password "guarded" app with if else statements
  PASSWORD = "banana"
def user_input
  puts "Please enter your name."
    username = gets.chomp

  puts "Hello #{username}! please enter your password"
  user_pass = gets.chomp
  if user_pass == PASSWORD
    print "Welcome! there is nothing here."
  else
    print "Wrong or no password! try again"
    user_input
  end
end

 user_input
