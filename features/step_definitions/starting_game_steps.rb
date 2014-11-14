Given(/^I am on the welcome page$/) do
	visit '/'
end

When(/^I fill out my name$/) do
	fill_in("player_name", :with => "Izzy")
end

When(/^Press the "(.*?)" button$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be taken to the game page$/) do
  pending # express the regexp above with the code you wish you had
end