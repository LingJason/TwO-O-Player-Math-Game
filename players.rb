class Players
  attr_accessor :lives, :name

  def initialize(name, lives = 3)
    @name = name
    @lives = lives
  end

  def alive?
    @lives > 0
  end

  def lose_health
    @lives -= 1
  end

end