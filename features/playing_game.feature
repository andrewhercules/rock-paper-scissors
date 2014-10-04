Feature: Playing the game
	In order to play Rock, Paper, Scissors
	And as a member of the Makers Academy Marketing Array
	I have already registered
	I want to start a new game

	Scenario:
		Given I am on the game page
		When I select "paper"
		And when computer player has selected
		And when I click "Play"
		Then I should see "Congratulations, you won!"