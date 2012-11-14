Feature: Creating projects
  As a user
  In order to have projects to assign ticket to
  I want to create them easily
  
Scenario: Creating a project
  Given I am on the homepage
  When I follow "New Project"
  And I fill in "Name" with "TextMate 2"
  And I press "Create Project"
  Then I should see "Project has been created."
