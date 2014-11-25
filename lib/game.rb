class Game

	attr_accessor :player
  attr_reader :move

	def initialize
		@player = nil
		@robot = nil
	end

  def add_player(player)
    self.player = player
  end

  def has_player?
  	@player
  end

  def move
    ["rock", "paper", "scissors"]
  end

  def move_count
    move.count
  end

  RULES = { "rock" => "scissors", "scissors" => "paper", "paper" => "rock" }

  def robot_move
    @robot = move.sample
  end

  def results(player_move, robot_move)
  	return "draw" if player_move == robot_move
    
    if RULES[player_move] == robot_move
      "player wins"
    else
      "robot wins"
    end
  end

end
