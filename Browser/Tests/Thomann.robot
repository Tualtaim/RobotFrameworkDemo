*** Settings ***
Documentation    Test makes sure user has to log in before buying a searched product
...              Install the node dependencies: run "rfbrowser init" in your shell

Resource    ../Data/InputData.robot
Resource    ../Resources/ThomannApp.robot
Resource    ../Resources/Common.robot
Resource    ../Resources/DataManager.robot

Test Setup  Begin Web Test

#RUN: robot -d results Tests\Thomann.robot
#RUN: robot -d results -i test4 -v SEARCH_TERM:Stratocaster Tests\Thomann.robot

*** Test Cases ***

User should be able to accept cookies and end up on landing page
    [Documentation]    Accept cookies and load landing page
    [Tags]    test1
    ThomannApp.Accept Cookies
    ThomannApp.Verify Landing

User should be able to search for products and select
    [Documentation]    Search and select product
    [Tags]    test2
    ThomannApp.Accept Cookies
    ThomannApp.Verify Landing
    ThomannApp.Search Products
    ThomannApp.Select Product from Search Results

User should be able to add product to cart
    [Documentation]    Add product to cart
    [Tags]    test3
    ThomannApp.Accept Cookies
    ThomannApp.Verify Landing
    ThomannApp.Search Products
    ThomannApp.Select Product from Search Results
    ThomannApp.Add Product to Cart

User should log in or write information before buying
    [Documentation]    Page should ask customer to log in or user can write info without loggin in
    [Tags]    test4
    ${User_Informations} =  DataManager.Get CSV Data  ${USERS_PATH_CSV}
    ThomannApp.Accept Cookies
    ThomannApp.Verify Landing
    ThomannApp.Search Products
    ThomannApp.Select Product from Search Results
    ThomannApp.Add Product to Cart
    ThomannApp.Proceed to Checkout
    ThomannApp.Write User Information   ${User_Informations}
