require 'player'

describe Player do

	let(:player) { Player.new }

	it 'should have a name' do
		player.name = "Izzy"
		expect(player.name).to eq "Izzy"
	end
end

# has a name

# has a hand

# can do rock

# can do paper

# can do scissors 