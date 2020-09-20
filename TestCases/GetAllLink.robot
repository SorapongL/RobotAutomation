***Settings***
Library    Selenium2Library

*** Variables ***
${url}        http://www.newtours.demoaut.com/
${Browser}    chrome

*** Keywords ***

*** Test Cases ***
1.เปิดเว็บไซต์ 
   Open Browser               ${url}         ${Browser}
   Maximize Browser Window
   Set Selenium Speed         0.3 seconds
2.GetAllLinks
    #นับจำนวนลิ้งบนหน้าเว็บ Tag ที่เป็น a(เปลี่ยนเป็นแท็กอื่นได้เช่น div) มีทั้งหมด 16
    ${AllLinkcount} =  get element count  xpath://a
    log to console  ${AllLinkcount}

    #แสดงชื่อลิ้งรวมทั้งหมด (+1 เพื่อให้เป็น 16 ลิ้งของ Tag a) เริ่มจาก 1 คือหมายถึงช่วง 2 ถึง 17 จะได้ 16 ลิ้งพอดี 
    #${AllLinkcount}=16 ลิ้ง   log to console  ${i} เพื่อนับจำนวนไม่ต้องใส่ก็ได้
    @{LinkItems}    create list
    : FOR  ${i}   IN RANGE    1     ${AllLinkcount}+1
    \  ${linkText} =    Get text  xpath:(//a)[${i}]
    \  log to console  ${linkText} 
    #\  log to console  ${linkText} ${i}
    close Browser
  