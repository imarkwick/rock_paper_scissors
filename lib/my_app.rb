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
		erb :play
	end

	post '/play_game' do
		@player_name = session[:player_name]
		@move_one = params[:move_one]
		@move_two = GAME.robot_move
		@results = GAME.results(@move_one, @move_two)
		erb :results
	end

	post '/play' do
		erb :play
	end

	# start the server if ruby file executed directly
	run! if app_file == $0
end