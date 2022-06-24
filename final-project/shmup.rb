require 'rubygems'
require 'gosu'

require_relative 'lib/ship'

class Game_window < Gosu::Window
  def initialize
    super 640, 480
    self.caption = "Ruby Shoot em Up"
    @ship = Ship.new(self)
  end
  
  def update
    @ship.update
  end
  
  def draw
    @ship.draw
  end
end

game_window = Game_window.new
game_window.show