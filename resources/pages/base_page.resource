*** Settings ***
Library    Browser

*** Keywords ***
Open Banking App
    [Arguments]    ${url}
    New Browser    browser=${BROWSER}    headless=True
    New Context    viewport={'width': 1440, 'height': 900}
    New Page    ${url}
    Wait For Elements State    id=username    visible    timeout=10s

Close Banking App
    Close Browser

Login Form Should Be Visible
    Wait For Elements State    id=username    visible    timeout=5s
