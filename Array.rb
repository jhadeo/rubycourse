array = ["Ruby", "test", 400, "John"]
p array[2]

#shovel
shovel_array = array << "Hey!"

p shovel_array

#deleting arrays

# delete
# delete_at
# delete_if

delete_array= [123, "Hi!", "Hello!"]

mod_array = delete_array.delete(123)
p delete_array

#making an array
lorem_ipsum = %w(
  Lorem ipsum dolor sit amet, 
  consectetur adipiscing elit, sed do eiusmod tempor incididunt 
    ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation 
    ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit 
    in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat 
    non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
  )

  # unless
  unless lorem_ipsum.empty? #unless this is empty, do this;
    puts lorem_ipsum
  end

