Feature: List articles on the index page
  
As a visitor
In order to choose an article to read
I would like to be able to see the articles listed on a page

  Scenario: View list of articles on the index page
    Given the following categories exists
    |name    | id |
    |Sports  | 1  |
    |Politics| 2  |
    |Health  | 3  |    
    And the following user exists
    | first_name  | last_name    | email          | password | role      | id |
    | Hanna       | Nyman        | hanna@tuna.se  | password | journalist| 1  |
    And the following articles exists
    | title                | lede                          | author  | created_at  | category_id | user_id |
    | A breaking news item | hello this is about me        | William | 2012-12-12  | 1           | 1       |
    | Learn Rails 5        | hello this is about that guy  | Camron  | 2013-11-11  | 3           | 1       |

    When I visit the site
    Then I should see "A breaking news item"
    And I should see "Learn Rails 5"
    And I should see "William"
    And I should see "Camron"
    And I should see "hello this is about me"
    And I should see "hello this is about that guy"
    And I should see "Sports"
    And I should see "Health"


    