class Questions
  attr_accessor :random_number1, :random_number2
  def initialize()
    @random_number1 = rand(1...20)
    @random_number2 = rand(1...20)
    @answer = @random_number1 + @random_number2
  end

  def question
    "What is #{random_number1} + #{random_number2} equal to?"
  end

end