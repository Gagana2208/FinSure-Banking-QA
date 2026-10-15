*** Settings ***
Documentation     Basic Browser library smoke test for the local banking app.
Resource          ../resources/pages/base_page.resource

*** Test Cases ***
Open Banking Page
    Open Banking App    http://127.0.0.1:3000
    Wait For Elements State    id=username    visible    timeout=10s
    Close Banking App
