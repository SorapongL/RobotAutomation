***Settings***
Library    Selenium2Library

*** Variables ***
${url}        https://testautomationpractice.blogspot.com/
${Browser}    chrome

*** Keywords ***

*** Test Cases ***
1.เปิดเว็บไซต์
    Open Browser               ${url}         ${Browser}
    Maximize Browser Window
    Set Selenium Speed         0.3 seconds

2.TableValidations
    #นับแถวในตาราง 7 แถว
    ${rows} =      get element count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr
    #นับคอลัมน์ในตาราง 4 คอลัมน์
    ${column} =    get element count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th

    log to console    ${rows}      rows
    log to console    ${column}    column

    #เอาข้อมูลจากตาราง ในที่นี้คือ Master In Selenium แถว 5 คอลัมน์ 1
    ${data} =   get text    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[5]/td[1]
    log to console     ${data}

    #ตรวจสอบข้อมูลในตาราง Validation
    #เช็ค column แถว 1 คอลัมน์ 2 ควรจะเป็น Author แถวตามด้วยคอลัมน์หรือValue
    table column should contain    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th[2]      2        Author
    #เช็ค row แถว 4 คอลัมน์ 1 ควรจะเป็น Learn JS แถวตามด้วยคอลัมน์Value
    table row should contain       xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[4]/td[1]      4        Learn JS
    #เช็ค cell แถว 5 คอลัมน์ 2 ควรจะเป็น Mukesh เซลล์ใช้แถวตามด้วยคอลลัมน์และValue
    #ใช้ xpath://table[@name="BookTable"] แทน //*[@id="HTML1"]/div[1]/table/tbody/tr[5]/td[2]
    table cell should contain       xpath://table[@name="BookTable"]        5      2      Mukesh
    #เช็ค header แถว 1 คอลัมน์ 1 ควรจะเป็น BookName ใช้ Value อย่างเดียวเพราะเป็น header
    #ใช้ xpath://table[@name="BookTable"] แทน //*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th[1]
    table header should contain       xpath://table[@name="BookTable"]       BookName

    close Browser