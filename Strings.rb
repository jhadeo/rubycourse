# more stuff at https://ruby-doc.org/core-3.1.2/String.html

#interpolation

a = "Hello"
b = "World"
 puts "#{a} #{b}!"

#comparing strings

c = "string"
d = "string"

# checking if variables are the same, output true
puts c == d

#puts "#{d} is the same with c" if c == d 

if c == d
  puts "string is the same"
else
  puts "no"
end

#manipulating strings


cars = "car"

puts cars.upcase
puts cars.downcase