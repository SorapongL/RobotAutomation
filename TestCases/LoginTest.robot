***Settings***
Library     Selenium2Library
Resource    ../Resources/LoginKeywords.robot

***Variables***
${Browser}    chrome
${SiteUrl}    http://newtours.demoaut.com/
${user}       tutorial
${pwd}        tutorial 

***Test Cases***
LoginTest
    Open my Browser            ${SiteUrl}    ${Browser}
    Enter UserName             ${user}
    Enter Password             ${pwd}
    Click SignIn
    Sleep                      3             seconds
    Verify Succesfull Login
    Close my Browsers