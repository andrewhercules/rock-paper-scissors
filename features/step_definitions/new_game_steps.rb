Given(/^I am on the homepage$/) do
	visit '/'
end

When(/^I click "(.*?)"$/) do |link|
	click_on 'Play Game'
end

Then(/^I should see "(.*?)"$/) do |text|
	expect(page).to have_content text
end

Given(/^I am on the player registration page$/) do
	visit '/player'
end

When(/^I enter "(.*?)"$/) do |name|
	fill_in 'player_1', with: name
end

When(/^when I click "(.*?)"$/) do |button|
	click_on button
end

