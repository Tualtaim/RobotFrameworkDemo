*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#Link to the 1st product, div[2] would the 2nd etc.
${SEARCH_PRODUCT_LINK} =  xpath=//*[@id="defaultResultPage"]/div[1]//a

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  Näytetään tuotteet

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    click link  ${SEARCH_PRODUCT_LINK}