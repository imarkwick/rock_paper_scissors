require 'player'

describe Player do

	let(:player) { Player.new }

	it 'should have a name' do
		player.name = "Izzy"
		expect(player.name).to eq "Izzy"
	end
	
	it "can do rock" do
    expect(player.moves('rock')).to eq 'rock'
  end

  it "can do scissors" do
    expect(player.moves('scissors')).to eq 'scissors'
  end

  it "can do paper" do
    expect(player.moves('paper')).to eq 'paper'
  end
end


