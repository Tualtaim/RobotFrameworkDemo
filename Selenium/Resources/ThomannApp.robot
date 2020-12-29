*** Settings ***
Resource    PO/Cookies.robot
Resource    PO/TopNav.robot
Resource    PO/LandingPage.robot
Resource    PO/SearchResults.robot
Resource    PO/Product.robot
Resource    PO/Cart.robot
Resource    PO/SignIn.robot

*** Keywords ***
Accept Cookies
    LandingPage.Load
    Cookies.Accept Cookies

Verify Landing
    LandingPage.Verify

Search Products
    TopNav.Search for Products

Select Product from Search Results
    SearchResults.Click Product link
    Product.Verify Page Loaded

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Proceed to Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded

Write User Information
    [Arguments]    ${Information}
    SignIn.Write Information    ${Information}