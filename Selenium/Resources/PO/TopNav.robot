*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR} =      xpath=//*[@id="fsearch-sw"]
${TOPNAV_SEARCH_BUTTON} =   xpath=/html/body/div[1]/div/div[1]/div[2]/div[1]/form/div/svg[1]

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    input text  ${TOPNAV_SEARCH_BAR}  ${SEARCH_TERM}

Submit Search
    #click button  ${TOPNAV_SEARCH_BUTTON}
    press keys    ${TOPNAV_SEARCH_BAR}  ENTER
    #click image    xpath=/html/body/div[1]/div/div[1]/div[2]/div[1]/form/div/svg[1]