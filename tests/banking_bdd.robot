*** Settings ***
Documentation     BDD-style banking scenarios using Gherkin steps and Playwright locators.
Resource          ../resources/steps/banking_steps.resource
Test Setup       Open Banking App    ${BASE_URL}
Test Teardown    Close Banking App

*** Variables ***
${BROWSER}     chromium
${BASE_URL}    %{FINSURE_URL=http://127.0.0.1:3000}
${USERNAME}    testuser
${PASSWORD}    Passw0rd!

*** Test Cases ***
Scenario: User logs in and checks balance and recent transactions
    Given the user is on the FinSure login page
    When the user enters valid credentials
    Then the balance should be displayed as $12,480.75
    And the recent transactions should be visible

Scenario: User logs out successfully
    Given the user is on the FinSure login page
    When the user enters valid credentials
    And user logs out from dashboard
    Then login form is visible after logout
