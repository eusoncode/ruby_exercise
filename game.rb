require './player'
require './question'

class Game
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player1
  end

  def start
    while !game_over?
      play_turn
      switch_player
      show_score
      puts '----- NEW TURN -----'
    end
    end_game
  end

  private

   # This method handles each player's turn
   def play_turn
    @question = Question.new
    @question.ask_question(@current_player)
    answer = gets.chomp

    # Check if the answer is incorrect, deduct a life if so
    unless @question.correct_answer?(answer)
      @current_player.lose_life
      puts "#{@current_player}: Seriously? No!"
    end
  end

  # Switch the current player after each turn
  def switch_player
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  # Check if the game is over
  def game_over?
    @player1.lives.zero? || @player2.lives.zero? # Game ends when one player's lives are depleted
  end

  # Display the current scores of both players
  def show_score
    puts "#{@player1} vs #{@player2}"
  end

  # End the game and display the winner
  def end_game
    winner = (@player1.lives > @player2.lives) ? @player1 : @player2
    puts "#{winner} wins with a score of #{winner.lives}/3"
    puts '----- GAME OVER -----'
    puts 'Good bye!'
  end
end