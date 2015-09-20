@regression
Feature: Test Checkout functionality for shopping car

  @checkout
  Scenario: As a website user I can purchase TV with valid credit card
    Given I prepare my environment for test execution
    Then I open search page
    When I search for "Sony" TV
    Then I get search result
    And I pick first item from search result
    Then I click on purchase button
    And I add credit card "1234 1234 1234 1234"
    Then I add card holder name "Thomas Nguyen"
    And I add expiration date "07/2017"
    Then add cvv code "777"
    Then I click on buy button
    And I verify successful transaction

  Scenario: cleaner version of the above scenario using nested steps
    Given I prepare my environment for test execution
    Then I open search page
    When I search for "Sony" TV
    Then I get search result
    And I pick first item from search result
    Then I click on purchase button
    And I add default payment info
    Then I click on buy button
    And I verify successful transaction
