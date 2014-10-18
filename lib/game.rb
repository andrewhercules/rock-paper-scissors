class Game

	attr_accessor :player1
	attr_reader :player_selection, :computer_selection

	def add_player(player)
		self.player1 = player
	end
	
	def accept_player_selection(player)
		@player_selection = player.selection
	end

	def accept_computer_selection
		@computer_selection = ["rock", "paper", "scissors"].sample
	end

	def determine_winner(player_selection, computer_selection)
		game_scenarios = {
			"rock" => "scissors",
			"paper" => "rock",
			"scissors" => "paper"
		}
		if player_selection == computer_selection
			"draw"
		elsif game_scenarios[player_selection] == computer_selection
			"win"
		else
			"lose"
		end
	end

end