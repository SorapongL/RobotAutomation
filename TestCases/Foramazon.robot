#ใช้ Mouse Down แทน Click Element คือเมาส์ชี้แทนเมาส์คลิก
########หน้านี้ใช้ไม่ได้เนื่องจากเว็บ https://www.amazon.com/ หน้าตาเปลี่ยนไปต้องแก้โค้ด
*** Settings ***
Library  Selenium2Library
Library  BuiltIn

*** Keywords ***

*** Test Cases ***
1. Open Website
    Open Browser  https://www.amazon.com/  browser=chrome
    Set Selenium speed  0.3
    Maximize browser Window

2. FOR IN ENUMERATE
    @{ITEMS}    Create List     Prime Video   Music, CDs & Vinyl   Digital Music
    :FOR    ${INDEX}     ${ELEMENT}    IN ENUMERATE   @{ITEMS}
    \    Wait Until Page Contains Element   //span[text()="Departments"]
    #รอจนเจอคำว่า Departments คือที่รวมให้เลือก
    \    Mouse Down  //span[text()="Departments"]
    #keyword Mouse Down คือเอาเมาส์ไปชี้
    \    Log To Console  ${ELEMENT}
    \    Click Element  //span[text()="${ELEMENT}"]
    \    Page Should Not Contain Element   //body[@class="a-m-us a-aui_152852-t1 a-aui_157141-t1 a-aui_158613-t1 a-aui_160684-t1 a-aui_57326-c a-aui_72554-c a-aui_accessibility_49860-c a-aui_attr_validations_1_51371-c a-aui_bolt_62845-c a-aui_perf_130093-c a-aui_tnr_v2_180836-c a-aui_ux_113788-c a-aui_ux_114039-c a-aui_ux_145937-c a-aui_ux_60000-c a-meter-animate"]
    #Page Should Not Contain Element เช็คว่าเปลี่ยนหน้าไปหรือยัง คลาสหน้าแรก amazon = a-m-us a-aui..... พอเปลี่ยนหน้าก็วนลูบต่อ
