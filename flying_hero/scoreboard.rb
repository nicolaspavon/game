require 'gosu'
require_relative 'game'
class Scoreboard
  def initialize
    @score = 0
    @font = Gosu::Font.new(72, name:'Arial')
  end
  def draw
    @font.draw(info,0, 0, 1)
  end
  def info
    "#{@score}"
  end
  def update_score!(score)
    @score +=score
  end
end
