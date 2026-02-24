Feature: Checkout
  As a logged-in user I want to complete my purchase so that I can receive my groceries.

  Background:
    Given the user is logged in
    And the user has items in the cart
    And the user is on the checkout page

  Scenario: Submit order with valid customer and payment information
    When the user fills in the following customer information:
      | name     | email            | address          |
      | John Doe | john@example.com | 123 Main St, NYC |
    And the user fills in the following payment information:
      | card number      | expiry date | CVV |
      | 4111111111111111 | 12/27       | 123 |
    And the user clicks the "Pay Now" button
    Then the user should see the order confirmation page with an order summary

  Scenario Outline: Checkout fails when customer <field> is invalid
    When the user enters an invalid value for the <field> field
    And the user fills in all other required fields
    And the user clicks the "Pay Now" button
    Then a validation error should be displayed for the <field> field

    Examples:
      | field   |
      | name    |
      | email   |
      | address |

  Scenario Outline: Checkout fails when payment <field> is invalid
    When the user fills in valid customer information
    And the user enters an invalid value for the <field> field
    And the user fills in all other required payment fields
    And the user clicks the "Pay Now" button
    Then a validation error should be displayed for the <field> field

    Examples:
      | field       |
      | card number |
      | expiry date |
      | CVV         |

  Scenario: Order confirmation displays order summary
    When the user completes a valid checkout
    Then the order confirmation page should display the order number, items, subtotal, taxes, and total
