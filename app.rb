require 'sinatra/base'
require 'shotgun'
require 'tilt/erb'
require './lib/player'
require './lib/computer'
require './lib/game'

class RockPaperScissors < Sinatra::Base
	enable :sessions

	get '/' do
	  erb :index
	end

	post '/name' do 
		$player = Player.new(params[:player_name])
		$computer = Computer.new
		redirect '/play'
	end

	get '/play' do
		@computer = $computer
		@player = $player
		erb :play
	end

	post '/choice' do
		@computer = $computer
		@player = $player
		@player.state = params[:choice]
		@game = Game.new(@player, @computer)
		erb :choice
	end


	

  # start the server if ruby file executed directly
  run! if app_file == $0
end