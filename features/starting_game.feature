Feature: Starting the game
In order to play rock, paper, scissors
As a cool dude
I want to start a new game

Scenario: Joining the game
	Given I am on the welcome page
	When I fill out my name
	And Press the "Play" button
	Then I should be taken to the game page