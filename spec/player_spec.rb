require 'player'

describe Player do

	let(:player) { Player.new }
	let(:robot) { double :robot }

	it 'should have a name' do
		player.name = "Izzy"
		expect(player.name).to eq "Izzy"
	end
	
	it "can do rock" do
    player.shoot
    expect(player.rock?).to be true
  end

  it "can do scissors" do
    player.shoot
    expect(player.scissors?).to be true
  end


  it "can do paper" do
   	player.shoot
    expect(player.paper?).to be true
  end
end


