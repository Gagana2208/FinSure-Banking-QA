*** Settings ***
Resource    ../pages/base_page.resource
Resource    ../pages/login_page.resource
Resource    ../pages/dashboard_page.resource

*** Keywords ***
the user is on the FinSure login page
    Wait For Elements State    id=username    visible    timeout=5s

the user enters valid credentials
    Login With Credentials    ${USERNAME}    ${PASSWORD}

the balance should be displayed as ${expected_balance}
    Verify Balance Is Displayed    ${expected_balance}

the recent transactions should be visible
    Verify Recent Transactions Are Visible

user logs out from dashboard
    Logout From Dashboard

login form is visible after logout
    Login Form Should Be Visible
