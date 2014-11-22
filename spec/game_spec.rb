require 'game'

describe Game do

  let(:game) { Game.new }
  let(:player) { double :player }

  it "can have a player" do
    game.add_player(player)
    expect(game.player).to eq (player)
  end

  it "knows how many move options" do
    expect(game.move_count).to eq 3
  end

  it "the robot move is either - rock paper scissor" do
    expect(["rock","paper","scissor"]).to include(game.robot_move)
  end

  it "prints results of moves" do
    expect(game.move)    
  end
end