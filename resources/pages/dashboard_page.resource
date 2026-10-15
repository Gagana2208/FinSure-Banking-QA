*** Settings ***
Library    Browser

*** Keywords ***
Verify Balance Is Displayed
    [Arguments]    ${expected_balance}
    ${balance_text}=    Get Text    id=balanceValue
    Should Contain    ${balance_text}    ${expected_balance}

Verify Recent Transactions Are Visible
    Wait For Elements State    id=salaryDepositItem    visible    timeout=10s
    ${transaction_text}=    Get Text    id=salaryDepositItem
    Should Contain    ${transaction_text}    Salary Deposit

Logout From Dashboard
    Click    id=logoutButton
    Wait For Elements State    id=username    visible    timeout=5s
