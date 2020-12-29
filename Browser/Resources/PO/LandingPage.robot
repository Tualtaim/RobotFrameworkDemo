*** Settings ***
Library    Browser

*** Keywords ***
Load
    Go To  ${START_URL}

Verify
    wait until network is idle