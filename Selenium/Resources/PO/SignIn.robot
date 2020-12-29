*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    wait until page contains  Kassa

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
    input text  xpath=//input[@name="companyname"]    ${Information[0]}

Fill First Name
    [Arguments]    ${Information}
    input text  xpath=//input[@name="firstname"]  ${Information[1]}

Fill Last Name
    [Arguments]    ${Information}
    input text  xpath=//input[@name="familyname"]  ${Information[2]}

Fill Adress
    [Arguments]    ${Information}
    input text  xpath=//input[@name="street"]  ${Information[3]}
