class ShipLaser
  attr_accessor :x, :y, :width, :height, :color1, :color2, :laser_speed
  def initialize(game_window, ship, x, y)
    @game_window = game_window
    @ship = ship
    @x = x
    @y = y
    @width = 2
    @height = 15
    @laser_speed = 20
    @color1 = Gosu::Color.new(0xff_ff0000)
    @color2= Gosu::Color.new(0xff_ffff00)
  end
end

def update
  @y = @y - @laser_speed
end

def draw
  @game_window.draw_quad(x - width, y, @color1, x + width, y, @color1, x - width, y + height, @color2, x + width, y + height, @color2, zOrder::LASER)
end

def fire
  
end