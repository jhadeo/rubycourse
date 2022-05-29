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

#Proc
# artist = Proc.new {|name, guitar| name + " " + guitar}, same as code below. {} makes a do block which can be made readable by using do
artist = Proc.new do |name, guitar|
  name + " " + guitar
end

p artist.call("Monkey", "Banana")

#Lambda
# cars = lambda {|model, year| model + " " + year}, same as; 
cars  = ->(model, year) {model + " " + year}

p cars.call("Flintstones", "Wheel")
  
  #The difference

  #Lambda checks the number of argument, while Proc does not
lambda_a = lambda { |var_a, var_b| var_a + var_b }
p lambda_a.call("something", "not")

# p lambda_a.call("something", "not", "third")
# ^ will give wrong number of arguments if given (ArgumentError)

proc_a = Proc.new do |x, y|
  x + y
end

p proc_a.call("x","y","z")
# ^ will ingore third argument, just the first two given

  #Both differently treats 'return'
def lambda_return
  return_lambda = lambda { return "nice!" }
  p return_lambda.call

  return_lambda2 = lambda { |arg| arg }
  return_lambda2.call("medic")
end
p lambda_return

  #proc return ends the method prematurely, ignores code below
def proc_return
  return_proc = Proc.new { return "proc nice!" }
  p return_proc.call

  return_proc2 = lambda { |arg| arg }
  return_proc2.call("lambda got in again")
end
p proc_return

#Method arguments
  #methods can be used with arguments, we can use arguments to fill in or modify local variable on the method
  # using code below will organize the arguments put, making it so it does not follow what comes first

def arguments(arg1:, arg2:, arg3:)
  puts arg1
  puts arg2
  puts arg3
end

arguments(arg1: "one", arg2: "2", arg3: "3")

#Splat

# hard to add more items
# def car_list(car_1, car_2, car_3)
#   puts car_1
#   puts car_2
#   puts car_3
# end

def car_list(*cars)
  puts cars
end

car_list("Ford", "Toyota", "Mercedes")

#with data
def used_cars(**used_list)
  used_list.each do |make, release|
    puts "Make: #{make}"
    p "Year: #{release}"
  end
end

#Hash, used for data
car_data = {
  "Toyota": "2003",
  "Mercedes": "2012",
  "Ford": "2021",
}
used_cars car_data





