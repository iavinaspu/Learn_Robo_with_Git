*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    firefox

*** Test Cases ***
LoginTest
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    LoginToSite

    Click Element    xpath=//div[normalize-space(.)="Sauce Labs Backpack"]
    Sleep    5s
    Click Element    xpath=//button[@data-test="add-to-cart"]
    Sleep    5s
    Click Element    xpath=//a[@data-test="shopping-cart-link"]
    Sleep    5s
    Click Element    xpath=//button[@data-test="checkout"]
    Sleep    5s

    FillAddress
    
    Click Element    xpath=//button[@data-test="finish"]
    Sleep    5s

    Close Browser

*** Keywords ***
LoginToSite
    Input Text    xpath=//input[@data-test="username"]    standard_user
    Sleep    2s
    Input Text    xpath=//input[@data-test="password"]    secret_sauce
    Sleep    2s
    Click Element    xpath=//input[@data-test="login-button"]
    Sleep    2s

FillAddress
    Input Text    xpath=//input[@data-test="firstName"]    robot
    Sleep    2s
    Input Text    xpath=//input[@data-test="lastName"]    framework
    Sleep    2s
    Input Text    xpath=//input[@data-test="postalCode"]    12345
    Sleep    2s
    Click Element    xpath=//input[@id="continue"]
    Sleep    2s
