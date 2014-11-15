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

Given(/^I am on the results page$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I can see the move I made$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^the computer makes a move$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^The result will be given$/) do
  pending # express the regexp above with the code you wish you had
end



