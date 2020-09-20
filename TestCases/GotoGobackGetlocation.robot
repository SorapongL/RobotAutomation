***Settings***
Library    Selenium2Library
*** Variables ***
${url1}        https://www.google.com/
${url2}        https://www.bing.com/
${Browser1}    chrome
${Browser2}    chrome
*** Keywords ***

*** Test Cases ***
1. เปิดเว็บไซต์ https://google.com/
    Open Browser               ${url1}        ${Browser1}
    Maximize Browser Window
    ${location} =  get location
    log to console  ${location}
    
    sleep    3

2. Go To https://bing.com/ ใช้ 1 argument = ${url2} or https://www.bing.com/
    go to              ${url2}    
    ${location2} =  get location
    log to console  ${location2}

    sleep    3

3. Go back
    go back
    ${location3} =  get location
    log to console  ${location3}

    sleep    3

    close Browser