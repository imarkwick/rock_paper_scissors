require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class MyApp < Sinatra::Base
	enable :sessions
	set :views, Proc.new { File.join(root, "..", "views") }
	GAME = Game.new

	get '/' do
		'Rock, Paper, Scissors'
		erb :welcome
	end

	post '/create_player' do
		player = Player.new
		@player_name = params[:player_name]
		session[:player_name] = @player_name
		p params
		erb :play
	end

	post '/play_game' do
		@player_name = session[:player_name]
		@move_one = params[:move_one]
		p session
		erb :results
	end

	get '/results' do
		@player_name = session[:player_name]
		@player_name
		@move_one = params[:move_one]
		@move_two = params{GAME.robot_turn}
		@result = GAME.play(@move_one, @move_two)
		p params
		erb :results
	end

	post '/reset' do
		@player_name = session[:player_name]
		@play_again = params["play_again"]
		erb :play
	end

	# start the server if ruby file executed directly
	run! if app_file == $0
end