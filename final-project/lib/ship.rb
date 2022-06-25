class Ship

  def self.load_asset(game_window)
    @ship_image = Gosu::Image.new('game-media/ship.png')
  end

  def initialize(game_window)
    @game_window =  game_window
    @image = self.class.load_asset(game_window)
    
    @speed = 10

    @x = game_window.width / 2
    @y = game_window.height / 2

    @x_offset = @image.width / 2
    @y_offset = @image.height / 2

    @lasers = []
  end

  def draw
    @image.draw_rot(@x,@y,0,0)
    @lasers.each do |laser|
      laser.draw
    end
  end
  
  def update
    move
    @lasers.each do |hello|
      hello.update
    end
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
      if @x > 0 + @x_offset
        @x = @x - @speed
      end
    end 

    def move_right
      if @x < @game_window.width - @x_offset
        @x = @x + @speed
      end
    end

    def move_up
      if @y > 0 + @y_offset
        @y = @y - @speed
      end
    end

    def move_down
      if @y < @game_window.height - @y_offset
        @y = @y + @speed
      end
    end

    def button_down(keypress)
      case keypress
      when Gosu::KbSpace
        fire_laser(SingleLaser.new(@game_window, self, @x, @y))
      end
    end

    def fire_laser(laser)
      @lasers << laser
      laser.fire
    end
end
