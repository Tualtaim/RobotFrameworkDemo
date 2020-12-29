*** Settings ***
Library  Browser

*** Keywords ***
Verify Page Loaded
    wait until network is idle

Write Information
    [Documentation]    Writes information from list
    [Arguments]    ${Users}
    FOR  ${Information}  IN  @{Users}
        run keyword and continue on failure  Fill Company Name    ${Information}
        run keyword and continue on failure  Fill First Name     ${Information}
        run keyword and continue on failure  Fill Last Name    ${Information}
        run keyword and continue on failure  Fill Adress    ${Information}
        sleep   1s
    END

Fill Company Name
    [Arguments]    ${Information}
    type text  xpath=//input[@name="companyname"]    ${Information[0]}

Fill First Name
    [Arguments]    ${Information}
    type text  xpath=//input[@name="firstname"]  ${Information[1]}

Fill Last Name
    [Arguments]    ${Information}
    type text  xpath=//input[@name="familyname"]  ${Information[2]}

Fill Adress
    [Arguments]    ${Information}
    type text  xpath=//input[@name="street"]  ${Information[3]}
