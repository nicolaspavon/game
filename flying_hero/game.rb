require 'gosu'
require_relative 'background'
require_relative 'hero'
require_relative 'candy'
require_relative 'asteroid_big'
require_relative 'asteroid_small'
require_relative 'scoreboard'


class Game < Gosu::Window


  def initialize
    super(900, 550, fullscreen: false)
    self.caption = "flying Hero!!!!!!!!"
    @background = Background.new
    @hero = Hero.new
    @candy = Candy.new(self)
    set_asteroid
    @scoreboard = Scoreboard.new

  end

  def draw
    @background.draw
    @hero.draw
    @candy.draw
    @asteroid.draw
    @scoreboard.draw

  end

  def update
    @background.scroll!
    @candy.move!
    @candy.reset!(self) if @candy.x <0
    @asteroid.move!
    set_asteroid if @asteroid.x <0
    @hero.move_up! if button_down?(Gosu::KbUp)
    @hero.move_down!(self.height) if button_down?(Gosu::KbDown)

    if @hero.bumped_into?(@candy)
      @candy.reset!(self)
      @scoreboard.update_score!(@candy.points)
    end
    if @hero.bumped_into?(@asteroid)
      @asteroid.reset!(self)
      @scoreboard.update_score!(@asteroid.points)
    end
    if @scoreboard.game_over
      close
    end

  end

  def button_down (id)
    if id == Gosu::KbEscape
      close
    end
  end
  def set_asteroid
    @asteroid = @asteroid && @asteroid.instance_of?(AsteroidBig) ?
    AsteroidSmall.new(self) : AsteroidBig.new(self)
  end

end
