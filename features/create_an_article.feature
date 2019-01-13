Feature: Create articles
  As a journalist,
  In order to write articles
  I would like to be able to have an article creation form

  Background:
    Given I visit the create article page

  Scenario: Successfully create an article [Happy Path]
    When I fill in "Title" with "Learning Rails 5"
    And I fill in "Lede" with "This is the lede paragraph"
    And I fill in "Body" with "Excited about learning a new framework"
    And I fill in "Author" with "Shahin"
    And I click on "Create Article" 
    Then I should be on index page
    And I should see "Learning Rails 5"
    And I should see "This is the lede paragraph"
    And I should see "Shahin"
