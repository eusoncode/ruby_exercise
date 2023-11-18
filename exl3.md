# Task 1: Extract Nouns for Classes
  Extracting the nouns from the problem description can lead us to potential classes:
   ### Player
   ### MathGame (or Game)
   ### Question

# Task 2: Write their roles

  ## Player

  Role: Represents each player in the game.
  Information: Name, lives remaining.
  Initialization: Needs a name, starts with 3 lives.
  Public methods:
  lose_life: Decreases the number of lives by 1.
  dead?: Checks if the player has no lives left.

  ## MathGame

  Role: Manages the game's flow and logic.
  Information: Current players, current question.
  Initialization: Initializes the two players and generates a question.
  Public methods:
  start_game: Starts the game loop.
  next_turn: Handles logic for the next turn.
  game_over?: Checks if the game has ended.

  ## Question

  Role: Represents the questions in the game.
  Information: Two random numbers for the question.
  Initialization: Generates two random numbers.
  Public methods:
  generate_question: Generates a new question.
  validate_answer(answer): Checks if the answer is correct.

  ## Further Details:

  The MathGame class will contain the game loop as it controls the game flow.
  MathGame will manage the current_player.
  Player and Question classes handle their respective state and logic without direct user I/O.
  MathGame can manage user I/O (displaying prompts, getting answers), or this could be managed by a separate class for clearer separation of concerns.
  This breakdown outlines the basic roles and responsibilities each class would have within the 2-player math game