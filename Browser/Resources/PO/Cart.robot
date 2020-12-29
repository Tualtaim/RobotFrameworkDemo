*** Settings ***
Library    Browser

*** Keywords ***
Verify Product Added
    wait until network is idle

Proceed to Checkout
    click   id=checkoutButton
