class Players
  attr_accessor :lives, :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_health
    self.lives -= 1
  end

end