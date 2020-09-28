#จัดการข้อมูลที่เป็น Json
*** Settings ***
Library    Collections

*** Variables ***
${js_string}=    {
...              "random": {
...              "passwd_change_date": "2016-12-16T11:26:26",
...              "passwd_fail_count": 0,
...              "password": "123456789",
...              "status": 0,
...              "user_name": "test@test.com",
...              "processVariables": {
...              "processKey": "modelTest",
...              "Years": "2018"
...              }
...              }
...              }

*** Test cases ***
Test Json data
    ${data}=           Evaluate           json.loads($js_string)    json
    #แปลงข้อมูล json เป็น dictionary ด้วย json.loads
    #Log To Console       \n${data["random"]}\n
    #แสดงข้อมูลว่ามีอะไรบ้างใน random
    Log To Console       \n${data["random"]["processVariables"]}\n
    #แสดงข้อมูลว่ามีอะไรบ้างใน processVariables
    Set To Dictionary    ${data["random"]["processVariables"]}        Years=2020                processKey=Test2020
    Set To Dictionary    ${data["random"]}                            status=1
    #keyword Set To Dictionary คือทำการแก้ไขข้อมูล
    ${js_string}=        Evaluate                                     json.dumps($data)         json
    #แปลงข้อมูลกลับจาก dictionary เป็น json ด้วย json.dumps
    Log To Console       \n${js_string}\n