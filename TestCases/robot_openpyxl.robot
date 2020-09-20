#EP6 ดึงข้อมูลจาก excel มาแสดงบน Console
*** Settings ***
Library    String
Library    openpyxl
Library    BuiltIn

*** Variables ***
${excel}    Excel_openpyxl.xlsx
${Data}     Sorapong Lekyan

*** Test Cases ***
Test Load Data Excel
    ${wb}             Load Workbook       ${CURDIR}/${excel}
    #โหลดไฟล์ excel เก็บในตัวแปร
    ${ws}             Set Variable        ${wb.get_sheet_by_name('Sheet1')}
    #เลือกแท็บไฟล์
    ${cell}           Set Variable        ${ws.cell(2,1).value}
    #กำหนดแถว-คอลัมน์ที่ต้องการดึงค่า
    ${body}           Fetch From Right    ${cell}      {}
    #เอาข้อมูลตัวแปร cell เก็บในตัวแปร body
    Log To Console    \n\n${body}\n
#EP8 เขียนข้อมูลลงใน excel
Test Write Excel
    ${wb}             Load Workbook              ${CURDIR}/${excel}
    Log To Console    ${wb}
    ${ws}             Set Variable               ${wb['Sheet1']}
    Log To Console    ${ws}
    Evaluate          $ws.cell(2,4,'${Data}')
    Evaluate          $wb.save('${excel}')


