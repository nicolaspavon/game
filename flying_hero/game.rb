require 'gosu'

class Game < Gosu::Window

  def initialize
    super(900, 550, fullscreen: false)
    self.caption = "flying Hero!!!!!!!!"
  end

  def draw

  end

  def button_down (id)
    if id == Gosu::KbEscape
      close
    end
  end
end
