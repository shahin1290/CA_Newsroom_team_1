Feature: User can sign up
  As a User
  In order to register
  I would like to be able to sign up

  Background: 
    Given the following user exists
    | first_name  | last_name | email         | password | password_confirmation |
    | Hanna       | Nyman     | hanna@tuna.se | password | password              |
    And I visit the site
    And I click 'Sign up'

  Scenario: When I fill in the sign up form, I can sign up [Happy Path]
    When I fill in 'First name' with 'John'
    And I fill in 'Last name' with 'Doe'
    And I fill in 'Email' with 'johndoe@hotmail.com'
    And I fill in 'Password' with 'password'
    And I fill in 'Password confirmation' with 'password'
    And I click 'Sign up'
    Then I should see 'Hello, John!'