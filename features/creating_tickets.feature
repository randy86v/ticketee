Feature: Creating Tickets
  As a user
  In order to create tickets for project
  I want to select a project and do that

Background:
  Given there is a project called "Internet Explorer"
  And I am on the homepage
  When I follow "Internet Explorer"
  And I follow "New Ticket"

Scenario: Creating a ticket
  When I fill in "Title" with "Non-standard compliance"
  And I fill in "Description" with "My pages are ugly!"
  And I press "Create Ticket"
  Then I should see "Ticket has been created."
  
Scenario: Creating a ticket with invalid information
  When I press "Create Ticket"
  Then I should see "Ticket has not been created!"
  And I should see "Title can't be blank"
  And I should see "Description can't be blank"
  
  Scenario: Ticket description attribute must be longer than 10 characters
    When I fill in "Title" with "Non-standard compliance"
    And I fill in "Description" with "it sucks"
    And I press "Create Ticket"
    Then I should see "Ticket has not been created!"
    And I should see "Description is too short"
