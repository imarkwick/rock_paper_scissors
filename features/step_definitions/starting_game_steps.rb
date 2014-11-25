Given(/^I am on the welcome page$/) do
	visit '/'
end

When(/^I fill out my name$/) do
	fill_in("player_name", :with => "Izzy")
end

When(/^Press the "(.*?)" button$/) do |button_name|
	click_button(button_name)
end

Then(/^I should be taken to the game page$/) do
	expect(page).to have_content
end

Given(/^I have registered to play$/) do
	visit '/'
	step("I fill out my name")
	click_button("play")
end

When(/^I choose "(.*?)"$/) do |button_name|	
	click_button(button_name)
end

Then(/^I should see the results$/) do
	expect(page).to have_content
end

Given(/^I am on the results page$/) do
	visit '/play_game/results'
	step("I have registered to play")
	click_button("scissors")
end

Given(/^I can see my move$/) do
	visit '/play_game/results'
	step("I should see the results")
end

Given(/^I can see the robot's move$/) do
	expect(page).to have_content
end

Given(/^see who is the winner$/) do
	expect(page).to have_content
end

Then(/^I should be able to click 'play again'$/) do
	click_button('play again')
end
