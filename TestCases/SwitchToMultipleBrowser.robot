***Settings***
Library    Selenium2Library

*** Variables ***
${url1}        https://google.com/
${url2}        https://bing.com/
${Browser1}    chrome
${Browser2}    chrome

*** Keywords ***

*** Test Cases ***
1. เปิดเว็บไซต์ https://google.com/
    Open Browser               ${url1}        ${Browser1}
    Maximize Browser Window
    Set Selenium Speed         0.3 seconds
    
    sleep    2
2. เปิดเว็บไซต์ https://bing.com/
    Open Browser               ${url2}        ${Browser2}
    Maximize Browser Window
    Set Selenium Speed         0.3 seconds
3. Switch Browser 
    Switch Browser    1
    ${title1} =       get title
    log to console    ${title1} เว็บที่ 1

    Switch Browser    2
    ${title2} =       get title
    log to console    ${title2} เว็บที่ 2

    sleep                 3
    close all Browsers
  