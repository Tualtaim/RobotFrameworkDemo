*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PRODUCT_CART_BUTTON} =  xpath=//button[contains(text(),'Lisää ostoskoriin')]

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Lisätietoa

Add to Cart
    Click Button    ${PRODUCT_CART_BUTTON}
    #click button    //button[.//text() = ' Lisää ostoskoriin ']