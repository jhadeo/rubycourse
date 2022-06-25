require 'rubygems'
require 'gosu'

require_relative 'lib/ship'
require_relative 'lib/z_order'
class Game_window < Gosu::Window
  def initialize
    super 640, 480
    self.caption = "Ruby Shoot em Up"
    @background = Gosu::Image.new('game-media/background.png')
    @ship = Ship.new(self)

  end
  
  def update
    @ship.update
  end
  
  def draw
    @background.draw(0,0,ZOrder::BACKGROUND)
    @ship.draw
  end
end

game_window = Game_window.new
game_window.show