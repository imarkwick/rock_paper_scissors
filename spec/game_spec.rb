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

  it "returns draw if player move equals robot move" do
    expect(game.results("rock", "rock")).to eq "draw"
  end

  it "returns player wins if player move beats robot move" do
    expect(game.results("rock", "paper")).to eq "robot wins"
  end

  it "returns robot wins if player move loses to robot move" do
    expect(game.results("paper", "rock")).to eq "player wins"
  end
end

