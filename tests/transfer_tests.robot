*** Settings ***
Documentation     Transfer-related banking automation cases.
Resource          ../resources/pages/base_page.resource
Resource          ../resources/pages/login_page.resource
Resource          ../resources/pages/dashboard_page.resource
Test Setup        Open Banking App    ${BASE_URL}
Test Teardown     Close Banking App

*** Variables ***
${BROWSER}    chromium
${BASE_URL}    %{FINSURE_URL=http://127.0.0.1:3000}
${USERNAME}    testuser
${PASSWORD}    Passw0rd!

*** Test Cases ***
Transfer Balance Flow
    Login With Credentials    ${USERNAME}    ${PASSWORD}
    Verify Balance Is Displayed    $12,480.75
    Wait For Elements State    id=logoutButton    visible    timeout=10s
