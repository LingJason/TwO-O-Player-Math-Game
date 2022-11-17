class Questions
  attr_accessor :random_number1, :random_number2, :user_answer, :answer
    def initialize()
      @random_number1 = rand(1...20)
      @random_number2 = rand(1...20)
      @answer = self.random_number1 + self.random_number2
      @user_answer
    end

    def question
      puts "What is #{self.random_number1} + #{self.random_number2} equal to?"
      self.user_answer = gets.chomp.to_i
    end

    def check_answer?
      self.user_answer == self.answer
    end
end