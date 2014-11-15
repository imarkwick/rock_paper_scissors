require 'player'

describe Player do

	let(:player) { Player.new }
	let(:robot) { double :robot }

	it 'should have a name' do
		player.name = "Izzy"
		expect(player.name).to eq "Izzy"
	end
end


