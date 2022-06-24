

system 'cls'

class Car
  def color
    "red"
  end

  def doors
    "2 Doors"
  end

  def wheels
    "4 Wheels"
  end
end

class Truck < Car
  def color
    super + "green"
    
  end
end

# car = Car.new
# puts car.color

# This overrides shared definition from class Car, using super runs both definitions from different classes
truck = Truck.new
puts truck.color

