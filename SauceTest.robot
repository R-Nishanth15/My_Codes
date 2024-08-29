*** Settings ***

Documentation                       This is the Test case for Sauce

#Library                             SeleniumLibrary

#To run the script
#robot -d results Tests/SauceTest.robot
Resource        ../Resources/Common.robot
Resource        ../Resources/Sauce.robot






*** Test Cases ***


Test for SauceWEb
    [Documentation]         This is test Suite for Adding product to Cart
    [Tags]                  Nish

            #Do some custom thing
            Common.Open Browser for Test
            Sauce.Login to site
            Sauce.Add Item To the Cart
            Sauce.Checkout
            Sauce.Adding Address
            Common.Order Finish





