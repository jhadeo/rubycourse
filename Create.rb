file = File.new('names.txt', 'w+')
file.puts("George", "John", "Michael")
file.close

file = File.new('emails.txt', 'w+')
file.puts("email@email.com", "email@email2.com", "email@email3.com")
file.close

file = File.new('ruby.rb', 'w+')
file.puts("puts 'hello ruby'")
file.close