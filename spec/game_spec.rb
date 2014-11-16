require 'game'

describe Game do

	let(:game){ Game.new }
	let(:player) { double :player }

	it 'can have a player' do
		game.add_player(player)
		expect(game.player).to eq (player)
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

	it 'scissors should beat paper' do
		expect(game.play(:scissors, :paper)).to eq "player wins"
	end

	it 'scissors should loose to rock' do
		expect(game.play(:scissors, :rock)).to eq "computer wins"
	end

	it 'paper should beat rock' do
		expect(game.play(:paper, :rock)).to eq "player wins"
	end

	it 'paper should loose to scissors' do
		expect(game.play(:paper, :scissors)).to eq "computer wins"
	end	
end

