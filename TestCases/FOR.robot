*** Settings ***
Library  Selenium2Library
Library  BuiltIn

*** Test Cases ***
1. Open Website
    Open Browser  https://tympanus.net/Development/PageLoadingEffects/  browser=chrome
    Set Selenium speed  0.3
    Maximize browser Window

2. FOR IN ENUMERATE
#วนแบบคืนค่า index และค่าใน list
    @{ITEMS}    Create List     Lazy Stretch      Wave    Spill    Frame it
    :FOR    ${INDEX}     ${ELEMENT}    IN ENUMERATE   @{ITEMS}
    \    Wait Until Page Contains Element   //div[@class="pageload-overlay"]
    #รอให้โหลดหน้าเสร็จ
    \    Click Element  //a[text()="${ELEMENT}"]
    #เลือกลิ้ง
    \    Log To Console  ${ELEMENT}
    \    Click Element  //a[@class="pageload-link"][text()="Show Page Loader"]
    #กดปุ่ม Show Page Loader
    \    Wait Until Page Contains Element   //div[@class="pageload-overlay"]
    #รอให้โหลดหน้าเสร็จ
    \    Click Element  //a[@class="pageload-link"][text()="Go back"]
    #กดปุ่ม Go back