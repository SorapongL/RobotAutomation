***Settings***
Library    Selenium2Library

*** Variables ***
${url}        http://www.newtours.demoaut.com/
${Browser}    chrome

*** Test Cases ***
2.กรอก user and password
#1.Lunch Browser ไปเรียกใช้ Keywords ด้านล่างให้เปิด Browser เรียกว่า User Defined Keyword without Arguments
    #1.Lunch Browser
#1.Lunch Browser  User Defined Keyword with Arguments
    #1.Lunch Browser    ${url}     ${Browser} 
#1.Lunch Browser  User Defined Keyword with Arguments and return value
    ${pagetitle} =   1.Lunch Browser    ${url}     ${Browser}
    log to console    ${pagetitle}
    log    ${pagetitle}

    input text         userName    mercury
    input text         password    mercury

    Close All Browsers
*** Keywords ***
1.Lunch Browser
    [Arguments]      ${appurl}     ${appbrowser}
    #without arguments
    #Open Browser               ${url}         ${Browser}
    #with arguments
    Open Browser               ${appurl}         ${appbrowser}
    Maximize Browser Window
    Set Selenium Speed         0.3 seconds
    #User Defined Keyword with Arguments and return value 
    ${title} =     get title
    [Return]      ${title}



