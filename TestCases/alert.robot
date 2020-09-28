***Settings***
Library    Selenium2Library

*** Variables ***
${url}        http://testautomationpractice.blogspot.com/
${Browser}    chrome

*** Keywords ***

*** Test Cases ***
1. เปิดเว็บไซต์
    Open Browser               ${url}        ${Browser}
    Maximize Browser Window
    Set Selenium Speed         0.3 seconds
2. คลิกปุ่ม Alerts
    sleep     2
    click element    xpath://*[@id="HTML9"]/div[1]/button
    sleep     2
    #handle alert  accept    #กดปุ่ม ok 
    #handle alert  dismiss   #กดปุ่ม cancel 
    #handle alert  Leave
    alert should be present   Press a button!   #เปิดแล้วปิดเอง กด ok เอง
    #alert should not be present   Press a button!   #เปิดแล้วปิดเอง กด cancel จะขึ้น Error ถูกแล้ว
