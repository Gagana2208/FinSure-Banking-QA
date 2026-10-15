Feature: Banking login and logout
  Scenario: User logs in and checks balance
    Given the user is on the FinSure login page
    When the user enters valid credentials
    Then the balance should be displayed as $12,480.75
    And the recent transactions should be visible

  Scenario: User logs out successfully
    Given the user is on the FinSure login page
    When the user enters valid credentials
    And user logs out from dashboard
    Then login form is visible after logout
