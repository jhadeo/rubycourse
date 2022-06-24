class Ship

  def self.load_asset(game_window)
    @ship_image = Gosu::Image.new('game-media/ship.png')
  end

  def initialize(game_window)
    @game_window =  game_window
    @image = self.class.load_asset(game_window)
    
    @speed = 10

    @x_pos = game_window.width / 2
    @y_pos = game_window.height / 2

    @x_offset = @image.width / 2
    @y_offest = @image.height / 2
  end

  def draw
    @image.draw_rot(@x_pos,@y_pos,0,0)
  end
  
  def update
    move
  end

  def move
    if @game_window.button_down? Gosu::KB_LEFT or @game_window::button_down? Gosu::GP_LEFT
      move_left
    end

    if @game_window.button_down? Gosu::KB_RIGHT or @game_window::button_down? Gosu::GP_RIGHT
      move_right
    end

    if @game_window.button_down? Gosu::KB_UP or @game_window::button_down? Gosu::GP_UP
      move_up
    end

    if @game_window.button_down? Gosu::KB_DOWN or @game_window::button_down? Gosu::GP_DOWN
      move_down
    end
  end

    def move_left
      if @x_pos > 0 + @x_offset
        @x_pos = @x_pos - @speed
      end
    end 

    def move_right
      if @x_pos < @game_window.width - @x_offset
        @x_pos = @x_pos + @speed
      end
    end

    def move_up
      if @y_pos > 0 + @y_offest
        @y_pos = @y_pos - @speed
      end
    end

    def move_down
      if @y_pos < @game_window.height - @y_offest
        @y_pos = @y_pos + @speed
      end
    end
end
