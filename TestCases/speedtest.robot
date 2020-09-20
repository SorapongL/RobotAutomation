***Settings***
Library    Selenium2Library

*** Variables ***
${url}        http://demowebshop.tricentis.com/register
${Browser}    chrome

*** Keywords ***

*** Test Cases ***
1. เปิดเว็บไซต์
    Open Browser               ${url}        ${Browser}
    Maximize Browser Window
    Set Selenium Speed         0.3 seconds
    #ยิ่งเยอะยิ่งช้า
    #sleep     3
    # ${time} =    get Selenium Timeout
    # Log To Console    ${time}
    # Set Selenium Timeout    10 seconds
    # wait until page contains    Register    # รอจนกว่าจะเห็นคำว่า Register
    #Set Selenium Implicit wait    10  seconds
    
2. กรอกข้อมูล
    Select Radio Button         Gender    M
    Input Text    name=FirstName    Sorapong
    Input Text    name=LastName    Lekyan
    Input Text    name=Email    Sorapong@OSSStax.com
    Input Text    name=Password    Apology
    Input Text    name=ConfirmPassword    Apology
    Close All Browsers
 


