Feature: verify google homepage

  @Home
  Scenario: verify user able to launch home page
    Given I am on google home page
    Then I verify gmail link is available
    And I verify image link is available
    And I click the image element

  @Search
  Scenario Outline: Verify user able to search for Rajinikanth
    Given I am on google home page
    When I type <search> in search box
    Then I validate <search> present in topic of second page
    Examples:
      | search       |
      | Rajinikanth  |
      | Kamal Haasan |





