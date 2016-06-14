require 'gosu'
require_relative 'background'
require_relative 'hero'

class Game < Gosu::Window

  def initialize
    super(900, 550, fullscreen: false)
    self.caption = "flying Hero!!!!!!!!"
    @background = Background.new
    @hero = Hero.new
  end

  def draw
    @background.draw
    @hero.draw
  end

  def update
    @background.scroll!
    @hero.move_up! if button_down?(Gosu::KbUp)
    @hero.move_down!(self.height) if button_down?(Gosu::KbDown)

  end

  def button_down (id)
    if id == Gosu::KbEscape
      close
    end
  end

end
