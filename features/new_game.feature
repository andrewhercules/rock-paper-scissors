Feature: Starting the game
	In order to play Rock, Paper, Scissors
	As a member of the Makers Academy Marketing Array
	I want to start a new game

	Scenario: Registering
		Given I am on the homepage
		When I click "PLAY GAME"
		Then I should see "Player 1, please enter your name!"

	Scenario: Entering name
		Given I am on the player registration page
		When I enter "Andrew"
		And when I click "Register"
		Then I should see "Please make your selection"
