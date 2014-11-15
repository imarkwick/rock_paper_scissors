class Game

	attr_accessor :player, :robot

	def initialize
		player = nil
	end

	def receive_shot(rps)
		player.shoots(rps)
	end

end