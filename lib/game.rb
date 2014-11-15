class Game

	attr_accessor :player

	def initialize
		@player = nil
	end

	def add_player(player)
		self.player = player
	end

	def move
		[:rock, :paper, :scissors]
	end

	RULES = { rock: :scissors, scissors: :paper, paper: :rock }

	def move_count
		move.count
	end

	def robot_turn
		move.sample
	end

	def play(move_one, move_two)
		return "draw" if move_one == move_two 
		return "player wins" if RULES[move_one] == move_two
		"computer wins"
	end
end

