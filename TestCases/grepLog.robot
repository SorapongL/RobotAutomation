#EP 9 เก็บผลเทส
***Settings***
Library    Selenium2Library
Library    OperatingSystem

***Test Cases***
Create File Grep Log
    Create File       ${CURDIR}/test2020.txt
    ${response} =     Grep File                 ${CURDIR}/LogFile.txt    Test_Data
    #สร้างไฟล์ test2020.txt ที่พาร์ทปัจจุบันแล้วเลือกที่มี Test_Data จากไฟล์ LogFile ที่เราสร้างไว้
    Append To File    ${CURDIR}/test2020.txt    ${response}
    #Grep file เขียนหรือเอาเฉพาะที่มี Test_Data มาแสดงในไฟล์ test2020.txt