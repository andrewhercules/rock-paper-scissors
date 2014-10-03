require 'game'

describe Game do

	let(:game) {Game.new}
	let(:player) {double :player, :selection => "rock"}


	it "should start with no Players" do
		expect(game.player1).to eq (nil)
		expect(game.player2).to eq (nil)
	end	

	it "should add one Player from the Makers Academy Marketing Array team" do
		game.add_player(player)
		expect(game.player1).to eq (player)
	end

	it "should accept Player selections" do
		game.accept_player_selection(player)
		expect(game.player_selection).to eq "rock"
	end

	it "should accept selections generated randomly by the Computer" do
		allow(game).to receive(:selection).and_return("paper")
    	expect(game.accept_computer_selection).to eq "paper" 
		# expect(game).to receive(:accept_computer_selection).and_return(:computer_selection)
	end

	it "should determine if the Player won" do
		expect(game.determine_winner("rock", "scissors")).to eq "You win!"
	end

	it "should determine if the Player has lost" do
		expect(game.determine_winner("rock", "paper")).to eq "You lose!"
	end

	it "should determine if there is a draw" do
		expect(game.determine_winner("rock", "rock")).to eq "Draw"
	end

end