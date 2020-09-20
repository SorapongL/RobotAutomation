#Output schema บอก Type ว่าเป็นอะไร
#Output แสดง response body ของ json ที่ได้จากการ GET
*** Settings ***
Library    REST

*** Test Cases ***
#EP 12 ข้อมูล 1 คน
GET REQUEST
    GET              https://jsonplaceholder.typicode.com/users/1
    #กำหนดว่าเป็นที่คน 1 มาแสดง
    Output           response body
    #เช็คผลแบบ output
    Output schema    response body
    Object           response body             # เช็ค response body ใช่ Object หรือไม่
    Integer          response body id          1                # เช็ค response body ฟิลด์ id ต้องเป็น Integer และมีค่าเป็น 1
    String           response body name        Leanne Graham    # เช็ค response body ฟิลด์ name ต้องเป็น String และมีค่าเป็น Leanne Graham
#EP 13 ข้อมูล 5 คน
GET REQUEST LIMIT5
#..คือลำดับการเข้าถึงสองขั้น . คือหนึ่งขั้น
    GET        https://jsonplaceholder.typicode.com/users?_limit=5    timeout=30    headers={"Authentication": ""}
    #กำหนดว่าเป็น 5 คนมาแสดง
    Array      response body
    #เช็คผลแบบ Array 
    Integer    $[0].id               1    
    #ตำแหน่งที่ 0 คือคนแรกเข้ามา 1 ขั้น จะเป็นตัวแปร id มีค่า = 1         
    String     $[0]..lat             -37.3159  
    #ตำแหน่งที่ 0 คือคนแรกเข้ามา 2 ขั้นจะเห็นตัวแปร lat มีค่า -37.3159
    Integer    $..id                 maximum=5
    #เช็ค limit ของ id ว่ามี 5 ตัวจริงไหม ข้อมูลมีเยอะมากเลยใส่เลขเท่าไรก็ได้
    Output     $..id
    #แสดงผลเป็น id