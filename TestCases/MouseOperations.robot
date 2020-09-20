***Settings***
Library    Selenium2Library

*** Variables ***
${url}        http://swisnl.github.io/jQuery-contextMenu/demo.html
${Browser}    chrome
# ${Browser}    headLesschrome

*** Keywords ***

*** Test Cases ***
1.เปิดเว็บไซต์ 
   Open Browser               ${url}         ${Browser}
   Maximize Browser Window
   Set Selenium Speed         0.7 seconds
   
2.Mouse Actions / Right click 
    Open contextMenu    xpath://html/body/div/section/div/div/div/p/span
    #มีค่าเท่ากันใช้อะไรก็ได้ xpath และ Open context Menu กับ Open contextMenu
    #Open context Menu    xpath://span[@class='context-menu-one btn btn-neutral']
    sleep     3

3.Mouse Actions / Double click action
    go to     http://testautomationpractice.blogspot.com/
    Double click Element       xpath://*[@id="HTML10"]/div[1]/button

4.Mouse Actions / Drag and Drop action
    go to     http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    #ย้ายหรือลากกล่องไปอีกที่นึงไม่สนถูกผิดแล้วแต่เรากำหนด
    drag and drop      id:box4   id:box104
    drag and drop      id:box1   id:box101
    drag and drop      id:box6   id:box106
    drag and drop      id:box3   id:box103
    drag and drop      id:box5   id:box105
    drag and drop      id:box7   id:box107
    drag and drop      id:box2   id:box102

    sleep     7

    close Browser
