Feature: Product Catalog
  As a logged-in user I want to browse and search products so that I can find items to purchase.

  Background:
    Given the user is logged in
    And the user is on the product catalog page

  Scenario: View products grouped by category
    Then the user should see products grouped by the following categories:
      | category   |
      | Dairy      |
      | Bakery     |
      | Beverages  |
      | Fruits     |
      | Vegetables |

  Scenario Outline: Search for a product by keyword
    When the user types "<term>" in the search bar
    Then the user should see only products matching "<term>"

    Examples:
      | term         |
      | Milk         |
      | Organic Farm |

  Scenario: Search returns no results
    When the user types "xyznonexistent" in the search bar
    Then the user should see a message indicating no products were found

  Scenario: Filter products by category
    When the user selects the "Dairy" category
    Then the user should see only products in the "Dairy" category

  Scenario: View product details
    When the user clicks the info button on a product card
    Then a modal should appear showing the product image, name, brand, price, and description

  Scenario: Close product details modal
    Given the user has opened the product details modal
    When the user closes the modal
    Then the modal should no longer be visible

  Scenario: Increase product quantity from the catalog
    When the user clicks the increase button on a product card
    Then the product quantity should increase by one

  Scenario: Decrease product quantity from the catalog
    Given the product has a quantity of 1
    When the user clicks the decrease button on the product card
    Then the product quantity should decrease by one

  Scenario: Product card displays required information
    Then each product card should display an image, name, and price
