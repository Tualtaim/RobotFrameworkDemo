*** Settings ***
Library  Browser

*** Variables ***
${PRODUCT_CART_BUTTON} =  xpath=//button[contains(text(),'Lisää ostoskoriin')]

*** Keywords ***
Verify Page Loaded
    wait until network is idle

Add to Cart
    Click    ${PRODUCT_CART_BUTTON}
    #click button    //button[.//text() = ' Lisää ostoskoriin ']