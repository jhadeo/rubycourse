# Setting up a new class

class Car
  def initialize(make)
    @make = make 
  end
  
  #getter
  def make
    @make 
  end

  #setter
  def make=(make)
    @make = make
  end
end

# new_car = Car.new("Banana")
# # p new_car.make

# new_car.make = "Apple"
# # p new_car.make

#Attr Accessor, much easier than setting different setters and getters
class Fruit
  attr_accessor :fruit, :color, :count, :price
  def initialize(fruit: , color: , count: , price: 15 )
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
# no more nil, but variable count is doubled
fruits = Fruit.new(fruit: "Blueberry", color: "Blue", count: 12)


p fruits.get_fruits
