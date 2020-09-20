*** Settings ***
Library         REST

*** Variables ***
${json}         {"id": 11,"name": "James","username":"Sorapong", "company":{"name" : "KTBG","code" : 2020}}

*** Test Cases ***
POST json body and write to file
    POST        https://jsonplaceholder.typicode.com/users    ${json}
    Integer     response status           201
    #เช็คสถานะให้รีเทินกลับเป็นค่า 201
    Output      response body 
    #แสดง response body ที่เราส่งค่าไป
    Output      response body     ${OUTPUTDIR}/response.json
    #เขียน output ลงไฟล์ response.json
    Output schema       response body     ${OUTPUTDIR}/schema_response.json
    #เขียน output schema ที่ส่งค่าไปลงไฟล์ schema_response.json
    Rest instances      ${OUTPUTDIR}/rest.json   sort_keys=true
    #sort_keys=true คือเรียงตัวอักษรของตำแหน่งที่ส่งไป
    #เขียน Request / response body / response schema รวมในไฟล์ rest.json