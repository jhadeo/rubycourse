#Attr Accessor, much easier than setting different setters and getters
class Fruit
  attr_accessor :fruit, :color, :count, :price
  def initialize(fruit: "Banana", color: "Blue" , count: 3 , price: 15 )
    @fruit = fruit 
    @color = color
    @count = count
    @price = price
  end

  def get_fruits
    p @fruit
    p @color
    p @count
    p @price
  end
end
# # no more nil, but variable count is doubled
# fruits = Fruit.new(fruit: "Blueberry", color: "Blue", count: 12)

class Nutrition < Fruit
  
  def colors
    return "red"
  end
end

colors = Nutrition.new(fruit: "Banana", color: "Blue" , count: 3 , price: 15 )
p colors.colors