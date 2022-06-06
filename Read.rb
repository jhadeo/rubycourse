name_list = File.read("names.txt")
email_list = File.read("emails.txt")

name_array = name_list.split
email_array = email_list.split

puts email_array.inspect
puts name_array

name_array.each do |name|
  puts name.upcase
end

email_array.each do |email|
  puts email.capitalize
end
