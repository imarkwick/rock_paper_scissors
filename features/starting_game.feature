Feature: Starting the game
In order to play rock, paper, scissors
As a cool dude
I want to start a new game

Scenario: Joining the game
	Given I am on the welcome page
	When I fill out my name
	And Press the "play" button
	Then I should be taken to the game page

Scenario: Playing the game
	Given I have registered to play
	When I choose "scissors"
	Then I should see the "RESULT"

Scenario: Declaring the winner
	Given I am on the results page
	And I can see the move I made
	When the computer makes a move
	Then The result will be given