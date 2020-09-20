*** Settings ***
Library    Selenium2Library

*** Variables ***
${url}        https://admin-demo.nopcommerce.com
${Browser}    chrome

*** Keywords ***
Open my Browser
    Open Browser               ${url}         ${Browser}
    Maximize Browser Window
    Set Selenium Speed         0.3 seconds

Close Browsers
    close all Browsers

Open Login Page
   go to ${url}

Input username
    [Arguments]    ${username}
    Input Text     id:Email       ${username}

Input pwd
    [Arguments]    ${password}
    Input Text     id:Password    ${password}

click login button
    Click Element    xpath://input[@class='button-1 login-button']

click logout link
    Click Link    Logout

Error message should be visible
    Page Should Contain    Login was unsuccessful.

Login Success
    Page Should Contain    Dashboard

