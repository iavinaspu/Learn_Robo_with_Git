*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}  https://www.way2automation.com/practicesite5.html#forms
${Browser}  firefox

*** Test Cases ***
OpenBrowser
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window

    set selenium speed    2s

    Input Text    xpath=//input[@id='firstName']    John
    
    Input Text    xpath=//input[@id='lastName']    Doe
    
    Input Text    xpath=//input[@id='dob']    1990-01-01
    
    #Click Element    xpath=//select[@id='country']/option[text()='Germany']
    Select from list by label    country    Germany
    
    Select Radio Button    gender    Male
    
    Select Checkbox    Automation
    
    Select Checkbox    API Testing
    
    Unselect Checkbox    API Testing
    
    Close Browser


*** Keywords *** 

