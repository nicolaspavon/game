require 'gosu'
require_relative 'game'
class Scoreboard
  def initialize
    @score = 0
    @message = Gosu::Image.from_text(self, info, Gosu.default_font_name, 60)

  end
  def draw
    @message.draw(10, 10, 2)
  end
  def info
    "#{@score}"
  end
end
