file =  File.new("delete.txt", "w+")
file.close

File.delete("delete.txt")