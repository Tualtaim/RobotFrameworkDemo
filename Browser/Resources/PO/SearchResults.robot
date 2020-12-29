*** Settings ***
Library    Browser

*** Variables ***
#Link to the 1st product, div[2] would the 2nd etc.
${SEARCH_PRODUCT_LINK} =  xpath=//*[@id="defaultResultPage"]/div[1]//a

*** Keywords ***
Verify Search Completed
    wait until network is idle

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    click  ${SEARCH_PRODUCT_LINK}