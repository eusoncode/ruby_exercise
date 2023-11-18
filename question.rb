class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask_question(player)
    puts "#{player}: What does #{@num1} plus #{@num2} equal?"
    print '> '
  end

  def correct_answer?(answer)
    answer.to_i == @num1 + @num2
  end
end

# Debugging with puts
question = Question.new
question.ask_question("Player 1") # Debug message will appear here
answer = gets.chomp

# For correct answer debugging:
correct = question.correct_answer?(answer)
puts "Is the answer correct? #{correct}" # Debug message will appear here