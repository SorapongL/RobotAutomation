***Settings***
Library    Selenium2Library

*** Variables ***
# ${url}        https://selenium.dev/selenium/docs/api/java/index.html
# ${Browser}    chrome

*** Keywords ***

*** Test Cases ***
1. Forloop IN RANGE
   : FOR    ${i}              IN RANGE    0    11
   \        Log to console    ${i}

2. Forloop IN
#เว้นวรรค 2 ครั้งขึ้นไปจะขึ้นบรรทัดใหม่ FOR IN
   : FOR    ${a}              IN      1    2    3    4    5 
   \        Log to console    ${a}

3. Forloop list number
    @{item}    create list    1    2    3    4    5  6
    : FOR    ${b}    IN    @{item}
    \    Log to console    ${b}

4. Forloop in name
    : FOR  ${c}     IN   James   Add  Tangmo  Pen
    \  Log to console   ${c}

5. Forloop list name
    @{namelist}    create list    A   B  C  D
    : FOR    ${d}    IN    @{namelist}
    \    Log to console    ${d}

6. Forloop WithExit
    @{number}    create list    1   2  3  4
    : FOR    ${e}    IN    @{number}
    \    Log to console    ${e}
    #ออกเมื่อเจอ 3 
    \    exit for loop if    ${e}==3 