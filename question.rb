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