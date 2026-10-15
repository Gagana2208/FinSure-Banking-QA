*** Settings ***
Documentation     FinSure Banking demo login, balance and transaction automation tests.
Resource          ../resources/pages/base_page.resource
Resource          ../resources/pages/login_page.resource
Resource          ../resources/pages/dashboard_page.resource
Test Setup        Open Banking App    ${BASE_URL}
Test Teardown     Close Banking App

*** Variables ***
${BROWSER}          chromium
${BASE_URL}         %{FINSURE_URL=http://127.0.0.1:3000}
${USERNAME}         testuser
${PASSWORD}         Passw0rd!
${BALANCE_TEXT}     $12,480.75
${TRANSACTION_TEXT}    Salary Deposit

*** Test Cases ***
Login Successfully
    [Documentation]    Verify a valid user can sign in and view banking details.
    Login With Credentials    ${USERNAME}    ${PASSWORD}
    Verify Balance Is Displayed    ${BALANCE_TEXT}
    Verify Recent Transactions Are Visible
    Wait For Elements State    id=logoutButton    visible    timeout=10s

Logout Successfully
    [Documentation]    Verify an authenticated user can sign out successfully.
    Login With Credentials    ${USERNAME}    ${PASSWORD}
    Verify Balance Is Displayed    ${BALANCE_TEXT}
    Logout From Dashboard
    Login Form Should Be Visible
