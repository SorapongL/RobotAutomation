#เก็บผลเทส
***Settings***
Library    Selenium2Library
Library    OperatingSystem

***Test Cases***
Create File Grep Log
    Create File       ${CURDIR}/testxmlericsson.txt
    ${response} =     Grep File                 C:/Users/james/downloadfromFileZilla/bfkt/HOST02_pmresult_13653022_30_202009150930_202009151000.xml    VNFP
    #สร้างไฟล์ testxmlericsson.txt ที่พาร์ทปัจจุบันแล้วเลือกที่มี VNFP จากไฟล์ xml ของ Ericsson
    #TAI group name
    Append To File    ${CURDIR}/testxmlericsson.txt    ${response}
    #Grep file เขียนหรือเอาเฉพาะที่มี VNFP มาแสดงในไฟล์ testxmlericsson.txt