*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Accept Cookies
    wait until page contains    Evästeet
    click button    xpath=//button[contains(text(),'yväksy')]
    sleep   1s
