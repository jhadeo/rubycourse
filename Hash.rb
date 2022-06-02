  #Hash
hash_a = {
  name: "John",
  age: "45",
  job: "Store Clerk"
}
p hash_a
# Return key value 
p hash_a[:age]
# Delete key value 
# hash_a.delete(:job)
# p hash_a

#Grabbing data from iteration
hash_a.each do |key, value|
  p key
  p value
end

hash_a.each_key do |key|
  p key
end

hash_a.each_value do |value|
  p value
end

