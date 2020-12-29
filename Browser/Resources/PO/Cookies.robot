*** Settings ***
Library    Browser

*** Keywords ***
#Accept Cookies
#    wait until page contains    Evästeet
#    click button    xpath=//button[contains(text(),'yväksy')]
#    sleep   1s

Accept Cookies
    wait until network is idle
    wait for elements state    xpath=//button[contains(text(),'yväksy')]    attached
    click    xpath=//button[contains(text(),'yväksy')]
    wait for elements state    xpath=//button[contains(text(),'yväksy')]    detached
