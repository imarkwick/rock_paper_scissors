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
		p params
		p session
		erb :results
	end

	post '/play_game/results' do
		@player_name = session[:player_name]
		@move_one = params[:move_one]
		@robot_move = GAME.robot_move
		p session
		erb :results
	end

	# start the server if ruby file executed directly
	run! if app_file == $0
end