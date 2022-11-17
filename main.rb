require "./players"
require "./questions"

class Game

  attr_accessor :player1, :player2, :current_player, :question, :winner

  def initialize()
    puts "Welcome to TwO-O-Player Math game that is fun for people of all ages!"
    @player1 = Players.new("Jason")
    @player2 = Players.new("Ling")
    @current_player = self.player1
    @question = Questions.new()
    @winner = false
  end

  def play()
    while !self.winner do
      puts "#{self.current_player.name}, its your turn!"
      self.question.question
  
      if self.question.check_answer? then
        puts "Correct!"
      else
        puts "Wrong Answer!"
        self.current_player.lose_health
      end
  
      if self.current_player.lives == 0
        puts "#{self.current_player.name} you lost"
        self.winner = true
      end
  
      self.question = Questions.new()
      if self.current_player == self.player1 then
        self.current_player = self.player2
        else
        self.current_player = self.player1
      end
    end
  end

end

Game.new().play()