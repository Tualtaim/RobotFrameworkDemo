*** Settings ***
Library    SeleniumLibrary
Library    Dialogs

*** Keywords ***
Begin Web Test
    ${BROWSER} =  Choose Browser
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser

Choose Browser
    [Documentation]    Users chooses browser for tests
    ${Edge} =  convert to string    edge
    ${Chrome} =   convert to string    chrome
    ${Explorer} =  convert to string    ie
    ${Selection} =  get selection from user    Choose Your Browser    ${Edge}    ${Chrome}

    [Return]    ${Selection}