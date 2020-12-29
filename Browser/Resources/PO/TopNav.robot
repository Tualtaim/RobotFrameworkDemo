*** Settings ***
Library    Browser

*** Variables ***
${TOPNAV_SEARCH_BAR} =      xpath=//*[@id="fsearch-sw"]
${TOPNAV_SEARCH_BUTTON} =   xpath=/html/body/div[1]/div/div[1]/div[2]/div[1]/form/div/svg[1]

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    type text  ${TOPNAV_SEARCH_BAR}  ${SEARCH_TERM}

Submit Search
    press keys    ${TOPNAV_SEARCH_BAR}  Enter
