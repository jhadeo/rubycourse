#def methods
def names
  print ["One", "Two", "Three"]
end

names

#Using return
@game = true

def games
  return ["Chess", "Checkers"] if @game == true
  return ["League", "Minecraft"] if @game == false
end

puts games

#Returning nil
def return_nil
  puts "Return nil"
end

def not_return_nil
  "Not nil"
end

# return_nil method puts text, no value inside therefore output is nil
p return_nil

# not_return_nil has value, used p to output "Not nil"
p not_return_nil

#class methods

class User
  
  # class method, self is to call admin_user in class
  def self.admin_user
    "admin"
  end

  #instance method
  def profile
    "profiles"
  end
  
  #putting an array
  def account
    ["name", "username"]
  end
end

p User.admin_user

# this is to call profile method, puts new to represent instance method
user = User.new
p user.profile
p user.account.last

#Proc and Lambda