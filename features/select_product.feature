Feature: Product Quantity

  Scenario: Verify that a product has enough quality in stock to be bought
    Given a user at the aliexpress website
    When the user searches for "instax mini"
    And the user goes to the 2nd page of the results
    When the user clicks the 2nd product
    Then the user goes to the product page
    And the user verifies the amount of products in stock to be greater or equal to 2