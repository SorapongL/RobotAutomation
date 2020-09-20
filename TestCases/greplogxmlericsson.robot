#เก็บผลเทส
***Settings***
Library    Selenium2Library
Library    OperatingSystem

***Test Cases***
Create File Grep Log
    Create File       ${CURDIR}/testxmlericsson.txt
    ${response} =     Grep File                 C:/Users/james/downloadfromFileZilla/bfkt/HOST02_pmresult_117490526_30_202009150930_202009151000.xml    5200
    #สร้างไฟล์ testxmlericsson.txt ที่พาร์ทปัจจุบันแล้วเลือกที่มี 5200 จากไฟล์ xml ของ Ericsson
    Append To File    ${CURDIR}/testxmlericsson.txt    ${response}
    #Grep file เขียนหรือเอาเฉพาะที่มี 5200 มาแสดงในไฟล์ testxmlericsson.txt