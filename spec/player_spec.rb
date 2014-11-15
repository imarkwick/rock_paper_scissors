require 'player'

describe Player do

	let(:player) { Player.new }
	let(:robot) { double :robot }

	it 'should have a name' do
		player.name = "Izzy"
		expect(player.name).to eq "Izzy"
	end

 	it 'can do rock' do
 		player.rock!
 		expect(player.rock!).to be true
 	end

 	it 'can do scissors' do
 		player.scissors!
 		expect(player.scissors!).to be true
 	end

 	it 'can do paper' do
 		player.paper!
 		expect(player.scissors!).to be true
 	end
end


