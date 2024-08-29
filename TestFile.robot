*** Settings ***
Library             SeleniumLibrary



*** Test Cases ***
Open Browser for Test
    [Documentation]                 Opening Browser
    [Tags]                          Open
    log                             Starting the test case
    open browser                    about:blank             chrome
    go to                           https://www.saucedemo.com/
    maximize browser window
Login to site
     [Documentation]                 Loging in
     [Tags]                          Login

    wait until page contains        Swag Labs
    sleep                           3s
    input text                      id=user-name                    standard_user
    input text                      id=password                     secret_sauce
    click button                    id=login-button
    sleep                           3s

Add Item To the Cart
    [Documentation]                 Adding item to Cart
    [Tags]                          Add to cart


    wait until page contains        Products
    click link                      id=item_3_title_link
    wait until page contains        Test.allTheThings() T-Shirt (Red)
    click button                    id=add-to-cart-test.allthethings()-t-shirt-(red)

Checkout
     [Documentation]                 Checking out
     [Tags]                          Checkout

    click link                      xpath=//*[@id="shopping_cart_container"]/a
    wait until page contains        Your Cart
    click button                    id=checkout

Adding Address
    [Documentation]                 Adding Address informatiom
    [Tags]                          Address

    wait until page contains        Checkout: Your Information
    input text                      id=first-name                   Nish
    input text                      id=last-name                    Roja
    input text                      id=postal-code                  1511
    click button                    id=continue
    wait until page contains        Checkout: Overview

Order Finish
    [Documentation]                 Order finished
    [Tags]                          Finish

    click button                    id=finish
    sleep                           3s
    close browser
