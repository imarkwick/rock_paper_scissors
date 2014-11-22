class Game

	attr_accessor :player, :robot

	def initialize
		player = nil
	end

  def add_player(player)
    self.player = player
  end

  def move
    ["rock", "paper", "scissor"]
  end

  def move_count
    move.count
  end

  def robot_move
    move.sample
  end

end