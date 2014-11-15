require 'game'

describe Game do

	let(:game){ Game.new }
	let(:player) { double :player }

	it "can have a player" do
		game.add_player(player)
		expect(game.player).to eq(player)
	end

	it 'should have three moves' do
		expect(game.move_count).to eq 3
	end

	it 'same move should result in a draw' do
		expect(game.play(:rock, :rock)).to eq "draw"	
	end

	it 'rock should beat scissors' do
		expect(game.play(:rock, :scissors)).to eq "player wins"
	end

	it 'rock should loose to paper' do
		expect(game.play(:rock, :paper)).to eq "computer wins"
	end
end

