*** Settings ***
Library    Selenium2Library

*** Variables ***
${url}        http://www.practiceselenium.com/practice-form.html
${Browser}    chrome

*** Keywords ***

*** Test Cases ***
1. เปิดเว็บไซต์ ibm-cognos
    Open Browser               ${url}        ${Browser}
    Maximize Browser Window
    Set Selenium Speed         0.3 seconds
    
2. กรอก user and password
    Input Text    name=firstname    Sorapong
    Input Text    name=lastname     Lekyan

3. เลือก Radio Button
    Select Radio Button    sex    Male
    Select Radio Button    exp    3

4. เลือก Checkbox
    Select Checkbox    RedTea
    Select Checkbox    oolongtea
    Select Checkbox    tool-0
    Select Checkbox    tool-1
    Select Checkbox    tool-2

5. ยกเลิก Checkbox
    Unselect Checkbox    oolongtea
    Unselect Checkbox    tool-0

6. เลือก Dropdown list
    #เหมือนกัน label กับ index
    Select from list by label    continents    Asia 
    sleep                        3
    Select from list by index    continents    1

7. เลือก Value Prompt หรือ ListBox
    Select from list by label      selenium_commands    Navigation Commands
    Select from list by label      selenium_commands    WebElement Commands
    Select from list by label      selenium_commands    Browser Commands
    sleep                          3
    Unselect from list by label    selenium_commands    Navigation Commands

8. กดปุ่ม Button OK
    Click Button    id=submit



