*** Settings ***
Library  DateTime
Library  Selenium2Library
Library  BuiltIn

*** Test Cases ***
Get Date and Time
    ${time}   Get Time
    #เก็บค่าเวลาในตัวแปร
    Log To Console      \n${time} 
    ${date_time}     Get Current Date
    #เก็บค่าเวลาในตัวแปรเวลาปัจจุบัน
    Log To Console      \n${date_time} 
    ${date_time}     Convert Date     ${date_time}         result_format=%d-%m-%Y %H-%M-%S
    #แปลงผลลัพธ์เวลาในแบบที่ต้องการ
    Log To Console      \n${date_time}\n
    Set Global Variable  ${date_time}
    #เซ็ตตัวแปรให้ใช้ในคีเวิดต่อไปได้

Capture PNG    
    Open Browser  https://robotframework.org/  chrome
    Maximize Browser Window
    Set Selenium Speed   0.2
    #เก็บรูป 2 พาร์ท
    Capture Page Screenshot    ${CURDIR}/Capture-${date_time}.png
    Log To Console             ${CURDIR}
    #เก็บรูปในพาร์ทปัจจุบัน
    Capture Page Screenshot    %{userprofile}/Capture-${date_time}.png
    #เก็บรูปในโฟล์เด้อ james
    Log To Console  Capture-${date_time}