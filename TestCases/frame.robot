***Settings***
Library    Selenium2Library

*** Variables ***
${url}        https://selenium.dev/selenium/docs/api/java/index.html
${Browser}    chrome

*** Keywords ***

*** Test Cases ***
1. เปิดเว็บไซต์ ibm-cognos
    Open Browser               ${url}        ${Browser}
    Maximize Browser Window
    Set Selenium Speed         0.3 seconds
2. เลือก Frames
    select Frame    packageListFrame
    Click link    org.openqa.selenium
    unselect Frame
    sleep  2

    select Frame    packageFrame
    Click link    WebDriver
    unselect Frame
    sleep  2

    select Frame    classFrame
    Click link    Help
    unselect Frame
    sleep  2
    
    close Browser