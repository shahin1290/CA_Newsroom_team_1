Feature: List articles on the index page
  
As a visitor
In order to choose an article to read
I would like to be able to see the articles listed on a page

  Scenario: View list of articles on the index page
    Given the following articles exists
      | title                | lede             | author  | date        | 
      | A breaking news item | blah blah blah   | William | 2012/12/12  | 
      | Learn Rails 5        | blah blah blah   | Camron  | 2013/11/11  | 
    When I visit the site
    Then I should see "A breaking news item"
    And I should see "Learn Rails 5"
    And I should see "William"
    And I should see "Camron"
    And I should see "2012-12-12"
    And I should see "2013-11-11"
    And I should see "blah blah blah"
    And I should see "blah blah blah"


    