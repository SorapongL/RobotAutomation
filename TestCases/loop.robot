*** Settings ***
Library           String

*** Test Cases ***
For-Loop-In-Range
#สุ่ม3รอบ รอบที่3 ออก
    : FOR    ${INDEX}    IN RANGE    1    3
    \    Log To Console     \n${INDEX} 
    \    ${RANDOM_STRING}=    Generate Random String      ${INDEX}
    \    Log To Console     ${RANDOM_STRING}

For-Loop-Elements
#วนจนหมดข้อมูลในอาร์เรย์
    @{ITEMS}    Create List    Sorapong Lekyan    Sorana Saetang    Pornpen Lekyan
    :FOR    ${ELEMENT}    IN    @{ITEMS}
    \    Log To Console     \n${ELEMENT}
    \    ${ELEMENT}    Replace String    ${ELEMENT}    ${SPACE}    ${EMPTY}
    #เอาค่าว่างออก
    \    Log To Console     ${ELEMENT}

For-Loop-Exiting
#แบบมีเชคเงื่อนไขแล้วออกจากลูบ
    @{ITEMS}    Create List    Good Element 1    Break On Me    Good Element 2
    :FOR    ${ELEMENT}    IN    @{ITEMS}
    \    Log To Console   \n${ELEMENT}
    \    Run Keyword If    '${ELEMENT}' == 'Break On Me'    Exit For Loop
    \    Log To Console     Do more actions here ...