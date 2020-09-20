***Settings***
Library    Selenium2Library

*** Variables ***
${url}        http://demo.automationtesting.in/Windows.html
${Browser}    chrome

*** Keywords ***

*** Test Cases ***
1. เปิดเว็บไซต์ 
   Open Browser               ${url}         ${Browser}
   Maximize Browser Window
   Set Selenium Speed         0.3 seconds
2. Tabbed Windows
    Click Element      xpath://*[@id="Tabbed"]/a/button
    sleep      2
    #เลือกว่าจะไปหน้าไหนคลิก view page source
    Select Window      title=Frames & windows 
    sleep      2
    Click Element      xpath://*[@id="Tabbed"]/a/button
    sleep      2
    Select Window      title=SeleniumHQ Browser Automation
    Click Element      xpath://*[@id="navbar"]/a[4]
    sleep      3
    Close All Browsers
