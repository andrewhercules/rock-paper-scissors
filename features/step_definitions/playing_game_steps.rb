Given(/^I am on the game page$/) do
	visit '/newgame'
end

When(/^I select "(.*?)"$/) do |selection|
	choose(selection)
end

When(/^when computer player has selected$/) do
	computer_selection = "rock"
end