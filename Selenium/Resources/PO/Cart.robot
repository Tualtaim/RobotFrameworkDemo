*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  Mene kassalle

Proceed to Checkout
    Click link  id=checkoutButton