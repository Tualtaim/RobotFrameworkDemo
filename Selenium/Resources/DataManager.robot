*** Settings ***
Documentation    Get data from ext files
Library    ../CustomLibs/Csv.py

*** Keywords ***

Get CSV Data
    [Arguments]    ${Filepath}
    ${Data} =   read csv file    ${FilePath}
    [Return]  ${Data}
