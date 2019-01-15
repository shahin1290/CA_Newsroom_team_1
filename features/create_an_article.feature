Feature: Create articles
  As a journalist,
  In order to write articles
  I would like to be able to have an article creation form

  Background:
    Given the following user exists
    | first_name  | last_name    | email          | password | role      |
    | Hanna       | Nyman        | hanna@tuna.se  | password | journalist|
    | William     | Schneiderman | will@gmail.com | password | member    |
    

  Scenario: navigates to create article page
    When I am logged in as "hanna@tuna.se"
    When I click on "New article"
    Then I am on Create article page

  Scenario: navigates to create article page
    When I am logged in as "will@gmail.com"
    Then I should not see "New article"
    
  Scenario: Successfully create an article [Happy Path]
    When I am logged in as "hanna@tuna.se"
    When I click on "New article"
    When I fill in "Title" with "Learning Rails 5"
    And I fill in "Lede" with "This is the lede paragraph"
    And I fill in "Body" with "Excited about learning a new framework"
    And I fill in "Author" with "Shahin"
    And I click on "Create Article" 
    Then I should be on index page
    And I should see "Learning Rails 5"
    And I should see "This is the lede paragraph"
    And I should see "Shahin"

  Scenario: Create an article [Sad Path]
    When I am logged in as "hanna@tuna.se"
    When I click on "New article"
    When I click on "Create Article"
    Then I should see "4 errors prohibited this article from being saved"
