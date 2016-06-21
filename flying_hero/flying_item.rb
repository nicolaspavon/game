require 'gosu'
class FlyingItem
  def initialize(window)
    @image = Gosu::Image.new(self.class.image_path)
    @width = @image.width
    @height = @image.height
    @y = Random.rand(window.height - @height)
    @x = window.width - 100
  end
  def draw
    if @x >0
      @image.draw(@x, @y, 1, 1, 1)
    else
      @x = window.width - 100
    end
  end
  def update
  end
end
