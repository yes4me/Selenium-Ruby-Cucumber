Feature: Zip code finger


  Scenario: Happy path for looking up the zip code
    Given I open browser and navigate to "https://www.usps.com/"
    When I navigate to USPS Look Up Zip Code Page
    Then I type "1600 Pennsylvania Avenue Northwest" to street address
    Then I type "Washington" to city field
    Then I select "DC - District of Columbia" from states dropdown list
    And I click Find Zip code button
    Then I see results on Look up a zip code page

  Scenario Outline: search for zi p code in different locations
    Given I open browser and navigate to "https://www.usps.com/"
    When I navigate to USPS Look Up Zip Code Page
    Then I type "<address>" to street address
    Then I type "<city>" to city field
    Then I select "<state>" from states dropdown list
    And I click Find Zip code button
    Then I see results on Look up a zip code page

    Examples: addresses
    |address                            |city       |state                    |
    |1600 Pennsylvania Avenue Northwest |Washington |DC - District of Columbia|
    |2297 Lacey Drive                   |Milpitas   |CA - California          |