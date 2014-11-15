class Game

	attr_accessor :player, :robot

	def initialize
		player = nil
	end

	def add_player(player)
		self.player = player
	end

	def receive_shot(rps)
		player.shoots(rps)
	end
end