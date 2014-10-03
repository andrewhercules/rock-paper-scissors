require 'player'

describe Player do
	
	let(:player) {Player.new("Andrew")}

	it "should have a name" do
		expect(player.name).to eq "Andrew"
	end

	it "should be able to select Rock" do
		player.make_selection("Rock")
		expect(player.selection).to eq "rock"
	end

	it "should be able to select Paper" do
		player.make_selection("Paper")
		expect(player.selection).to eq "paper"
	end

	it "should be able to select Scissors" do
		player.make_selection("Scissors")
		expect(player.selection).to eq "scissors"
	end

end