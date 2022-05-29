#def
def names
  puts ["One", "Two", "Three"]
end

names

# Return
@game = true

def games
  return ["Chess", "Checkers"] if @game == true
  return ["League", "Minecraft"] if @game == false
end

puts games