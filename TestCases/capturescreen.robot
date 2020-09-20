***Settings***
Library    Selenium2Library

*** Variables ***
${url}        https://opensource-demo.orangehrmlive.com/
${Browser}    chrome

*** Keywords ***

*** Test Cases ***
1. เปิดเว็บไซต์
    Open Browser               ${url}         ${Browser}
    Maximize Browser Window
    Set Selenium Speed         0.3 seconds

2. กรอกข้อมูล
    input text    txtUsername    Admin 
    input text    txtPassword    admin123 

3. capture element screenshot
    sleep                         3
    #เปลี่ยน \ เป็น / ใส่ชื่อรูปไว้ท้ายด้วยนามสกุล PNG เท่านั้น
    capture element screenshot    xpath://*[@id="divLogo"]/img       C:/Users/james/RobotAutomation/Capturelogo.PNG
    capture page screenshot       C:/Users/james/RobotAutomation/Capturepromptpage.PNG
