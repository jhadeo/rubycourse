begin
  puts 'abc' / 'xyz'

rescue 
  puts "no"
end


begin
  puts 0 + nil
rescue StandardError => sx
    puts "nil typerror #{sx} #{Time.now}"
end


def error(exception)
  File.open('logs.txt', 'a+') do |file|
    file.puts exception
    end
end

begin
  puts 10 + nil
rescue => exception
  error("This is an error -> #{exception} at #{Time.now}")
else
  
end