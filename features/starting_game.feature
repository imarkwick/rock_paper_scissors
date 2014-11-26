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
	Then I should see the results

Scenario: Displaying the results
	Given I am on the results page
	And I can see my move
	And I can see the robot's move
	And see who is the winner
	Then I should be able to play again
