*** Settings ***
Library    Browser

*** Keywords ***
Login With Credentials
    [Arguments]    ${username}    ${password}
    Wait For Elements State    id=username    visible    timeout=5s
    Fill Text    id=username    ${username}
    Fill Text    id=password    ${password}
    Click    id=loginButton
    Wait For Elements State    id=logoutButton    visible    timeout=10s
