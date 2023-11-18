class Player
  attr_reader :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def to_s
    "#{@name}: #{@lives}/3"
  end
end

# Debugging with puts
player = Player.new("Alice")
puts player # Check player initialization
player.lose_life
puts player # Check player's lives after losing one