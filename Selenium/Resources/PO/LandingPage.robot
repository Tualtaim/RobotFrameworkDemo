*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Load
    Go To  ${START_URL}

Verify
    wait until page contains    Tervetuloa Thomannille