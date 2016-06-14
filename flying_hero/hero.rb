require 'gosu'
class Hero

  def initialize
    @sprites = Gosu::Image::load_tiles('assets/images/cat.png', 847/6, 87, tileable: false)
    @x      = 10
    @y      = 200
    @width  = @sprites.first.width
    @height = @sprites.first.height
  end

  def draw
    sprite = @sprites[Gosu::milliseconds / 75 % @sprites.size]

    sprite.draw(@x, @y, 1)

  end
  def move_up!
    @y -= 5 if @y>0
  end
  def move_down!(height)
    @y += 5 if @y < height - @height
  end

end
