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
	expect(page).to have_content("welcome to rock, paper, scissors")
end

Given(/^I have registered to play$/) do
	visit '/'
	step("I fill out my name")
	click_button("play")
end

When(/^I choose "(.*?)"$/) do |button_name|	
	click_button(button_name)
end

Then(/^I should see the "(.*?)"$/) do |arg1|
	expect(page).to have_content
end

