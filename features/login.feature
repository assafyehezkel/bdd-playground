Feature: Login
  As a user I want to log into my account so that I can shop on the supermarket website.

  Background:
    Given the user is on the login page

  Scenario: Successful login with valid credentials
    When the user enters the following credentials:
      | email            | password      |
      | john@example.com | SecurePass123 |
    And the user clicks the login button
    Then the user should be redirected to the product catalog page

  Scenario: Login fails with invalid credentials
    When the user enters the following credentials:
      | email            | password      |
      | john@example.com | WrongPassword |
    And the user clicks the login button
    Then an error message should be displayed indicating invalid credentials

  Scenario Outline: Login fails when a required field is empty
    When the user leaves the <field> field empty
    And the user fills in the other fields
    And the user clicks the login button
    Then an error message should be displayed indicating the <field> is required

    Examples:
      | field    |
      | email    |
      | password |

  Scenario: Navigate to forgot password page
    When the user clicks the "Forgot password?" link
    Then the user should be redirected to the forgot password page

  Scenario: Navigate to register page
    When the user clicks the register link
    Then the user should be redirected to the registration page
