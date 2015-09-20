@search
Feature: Test scenarios for Search functionality

  @regression
  Scenario: User able to search items
    Given I prepare my environment for test execution
    Given I open search page
    Then I search by name "computer"
    And I get search result

  Scenario: User able to search by product name
    Given I prepare my environment for test execution
    Given I open search page
    When I search by name "black tea"
    Then I get search result
    And items should have discounts tags
      | Ceylon            | 25% off |
      | English breakfast | 50% off |