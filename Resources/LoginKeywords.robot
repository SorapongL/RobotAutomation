***Settings***
Library      Selenium2Library
Variables    ../PageObjects/Locators.py

***Keywords***
Open my Browser
    [Arguments]                ${SiteUrl}    ${Browser}
    open browser               ${SiteUrl}    ${Browser}
    Maximize Browser Window

Enter UserName
    [Arguments]    ${username}             
    Input Text     ${txt_loginUserName}    ${username}
    #tutorial

Enter Password
    [Arguments]    ${Password}
    Input Text     ${txt_loginPassword}    ${Password}
    #tutorial

Click SignIn
    Click Button    ${btn_signIn}

Verify Succesfull Login
    #เช็ค Title ให้เจอคำว่า Find a Flight: Mercury Tours:
    title should be    Find a Flight: Mercury Tours: 
Close my Browsers
    Close all browsers