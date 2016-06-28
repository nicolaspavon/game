require 'gosu'
class FlyingItem
attr_accessor :x
  def initialize(window)
    @image = Gosu::Image.new(self.class.image_path)
    @width = @image.width
    @height = @image.height
    reset!(window)
  end
  def draw
    @image.draw(@x, @y, 1, 1, 1)
  end
  def reset!(window)
    @y = Random.rand(window.height - @height)
    @x = window.width - 100
  end
  def update
  end
end
