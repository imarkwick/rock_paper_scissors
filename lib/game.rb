class Game

	attr_accessor :player, :robot

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
    ["rock", "paper", "scissor"]
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
  	return "player wins" if RULES[player_move] == robot_move
  	return "robot wins" if RULES[robot_move] == player_move
  end

end
