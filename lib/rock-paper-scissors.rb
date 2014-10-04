require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RockPaperScissors < Sinatra::Base

	set :views, Proc.new { File.join(root, '..', 'views') }
	enable :sessions

	GAME = Game.new

	get '/' do
		erb :index
	end

	get '/player' do
		erb :player
	end

	post '/player' do
		player_name = params[:player_1]
	    PLAYER = Player.new(player_name)
	    PLAYER.name = player_name
	    session[:me] = PLAYER
	    GAME.add_player(PLAYER)
	    puts GAME.inspect
	  	erb :player
	  	redirect '/newgame' 
	end

	get '/newgame' do
		erb :newgame
	end

	post '/result' do
		player_selection = params[:player_selection]
		PLAYER.make_selection(player_selection)
		GAME.accept_player_selection(PLAYER)
		GAME.accept_computer_selection
		computer_selection = GAME.computer_selection
		@game_result = GAME.determine_winner(player_selection, computer_selection)
		puts GAME.inspect
		erb :result
  end


	# start the server if ruby file executed directly
	run! if app_file == $0

end
