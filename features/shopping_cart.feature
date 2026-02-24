Feature: Shopping Cart
  As a logged-in user I want to manage my shopping cart so that I can review items before purchasing.

  Background:
    Given the user is logged in
    And the user has the following products in the cart:
      | product      | unit price | quantity |
      | Whole Milk   | 3.50       | 2        |
      | Sourdough    | 4.00       | 1        |
      | Orange Juice | 5.25       | 3        |
    And the user is on the shopping cart page

  Scenario: View cart items with details
    Then each cart item should display the image, name, unit price, quantity, and total price

  Scenario: Increase item quantity in cart
    When the user clicks the increase button on "Sourdough"
    Then the cart item "Sourdough" should show the following:
      | quantity | total price |
      | 2        | 8.00        |

  Scenario: Decrease item quantity in cart
    When the user clicks the decrease button on "Whole Milk"
    Then the cart item "Whole Milk" should show the following:
      | quantity | total price |
      | 1        | 3.50        |

  Scenario: Remove item from cart
    When the user clicks the remove button on "Sourdough"
    Then the cart should contain the following items:
      | product      |
      | Whole Milk   |
      | Orange Juice |

  Scenario: Cart summary displays correct totals
    Then the summary box should display the following:
      | subtotal | taxes | total |
      | 26.75    | 2.41  | 29.16 |

  Scenario: Cart summary updates after quantity change
    When the user clicks the increase button on "Whole Milk"
    Then the summary box should display the following:
      | subtotal | taxes | total |
      | 30.25    | 2.72  | 32.97 |

  Scenario: Proceed to checkout
    When the user clicks the checkout button
    Then the user should be redirected to the checkout page
