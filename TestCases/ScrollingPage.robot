***Settings***
Library    Selenium2Library

*** Variables ***
${url}        https://www.countries-ofthe-world.com/flags-of-the-world.html
${Browser}    chrome

*** Keywords ***

*** Test Cases ***
1.เปิดเว็บไซต์ 
   Open Browser               ${url}         ${Browser}
   Maximize Browser Window
   Set Selenium Speed         0.3 seconds
2.ScrollingTest
    #เลื่อนลงมาตามระยะที่กำหนด
    #execute javascript        window.scrollTo(0,1500)
    #เลื่อนลงมาถึง Element ที่กำหนดเช่นอินเดีย อยู่ล่างสุด
    #Scroll Element into view         xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img
    #เลื่อนมาถึงล่างสุดของหน้า
    execute javascript        window.scrollTo(0,document.body.scrollHeight)
    Sleep    3 
    #เลื่อนขึ้นไปบนสุดของหน้า scrollLow หรือ -document.body.scrollHeight
    #execute javascript        window.scrollTo(0,document.body.scrollLow)
    execute javascript        window.scrollTo(0,-document.body.scrollHeight)
