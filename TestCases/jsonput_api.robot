*** Settings ***
Library         REST    https://jsonplaceholder.typicode.com
*** Test Cases ***
PUT
    PUT         /users/10      { "isBoolean": true, "isNull": null, "company": { "name":"" ,"code":0.09 } }
    #/users/2 คือ พาร์ท api ในเว็บมี https://jsonplaceholder.typicode.com มี 10 คนเปลี่ยนได้ถ้า 11 จะเฟลลองเปลี่ยนอันไหนก็ได้ข้อมูลไม่เปลี่ยนในเว็บ
    Boolean     $.isBoolean   true  #เช็คค่าบูลีน
    Null        $.isNull     #เช็คค่าว่าง
    String      $..name       ${EMPTY}   #เช็คตัวแปร name ว่าเป็น string ไหมและ ค่าว่างไหม
    Number      $..code       0.09      #เช็คตัวแปร code ว่าเป็น number ไหมและ มีค่า 0.09 ป่าว
    Missing     $.key1      #เช็คตัวแปร key1 ว่าไม่มีในข้อมูลเจสันป่าว ถ้ามีตัวแปร key1 อยู่จะเฟล
    Output      response body    #แสดงผลลัพธ์ของเจสันที่ส่งไป