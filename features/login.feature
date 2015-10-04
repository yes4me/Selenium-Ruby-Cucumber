@login
Feature: Scenarios for login functionalities


  Background:
    Given I open browser and navigate to "https://www.usps.com/"
    When I press on Signin button on home page


  Scenario: Verify Login error messages
    Then I type my login "invalid-login"
    And I type my password "cool_password"
    Then I press on Signin button on login page
    Then I will see invalid login or password error message

  Scenario: Verify that password is required
    Then I type my login "invalid-login"
    Then I press on Signin button on login page
    Then I will see password required error message

  Scenario: Verify that login should be more than 5 characters
    Then I type my login "12345"
    And I type my password "cool_password"
    Then I press on Signin button on login page
    Then I will see login length error message
