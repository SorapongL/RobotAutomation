*** Settings ***
Library    Selenium2Library
Library    Datetime

*** Variables ***
${url}                                                 http://10.4.109.199/ibmcognos/cgi-bin/cognosisapi.dll?b_action=xts.run&m=portal/main.xts&startwel=yes
${Browser}                                             chrome
${link 4G-Access Reports}                              /ibmcognos/cgi-bin/cognosisapi.dll?b_action=xts.run&m=portal/cc.xts&m_folder=iB3FAF1D930EA42D28936561E6062F0B5
${link Ericsson LTE eUTRAN Performance Report}         /ibmcognos/cgi-bin/cognosisapi.dll?b_action=xts.run&m=portal/cc.xts&m_folder=i44794DDB0BBD43CF86F146E747C39668
${link Ericsson LTE eUTRAN Performance Report HTML}    /ibmcognos/cgi-bin/cognosisapi.dll?b_action=cognosViewer&ui.action=run&ui.object=%2fcontent%2ffolder%5b%40name%3d%274G-Access%20Reports%27%5d%2ffolder%5b%40name%3d%27Ericsson%20LTE%20eUTRAN%20Performance%20Report%27%5d%2freport%5b%40name%3d%27Ericsson%20LTE%20eUTRAN%20Performance%20Report%27%5d&ui.name=Ericsson%20LTE%20eUTRAN%20Performance%20Report&run.outputFormat=&run.prompt=true&ui.backURL=%2fibmcognos%2fcgi-bin%2fcognosisapi.dll%3fb_action%3dxts.run%26m%3dportal%2fcc.xts%26m_folder%3di44794DDB0BBD43CF86F146E747C39668

*** Keywords ***

*** Test Cases ***
# 0.เปิดโปรแกรม Pulse Secure
#    [Tags]                                                                PulseSecure
#    Run                                                                   C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Pulse Secure
#    #C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Pulse Secure
1. เปิดเว็บไซต์ ibm-cognos
    Open Browser               ${url}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed         0.3 
2. กรอก user and password
    Input Text    name=CAMUsername    tester1
    Input Text    name=CAMPassword    Tester1
3. กดค้นหา
    Click Button    id=cmdOK
4. คลิ๊กไปที่ 4G-Access Reports
    Click Link    xpath=//a[@href="${link 4G-Access Reports}"]
5. คลิ๊กไปที่ Ericsson LTE eUTRAN Performance Report
    Click Link    xpath=//a[@href="${link Ericsson LTE eUTRAN Performance Report}"]
6. คลิ๊กไปที่ Ericsson LTE eUTRAN Performance Report HTML
    Click Link                          xpath=//a[@href="${link Ericsson LTE eUTRAN Performance Report HTML}"]    
    Wait Until Page Contains Element    //div[@class="dijitInline dijitRadio"]                                    
7. คลิ๊กไปที่ GEO
    click element                    xpath://input[@value="[ECELL (DMR)].[ERI EUTRAN GEO Dimension].[ERI eUTRAN GEO]"]
    sleep              3   
# 8. คลิ๊กไปที่ Network 900
#     click element    xpath://input[@value="900"]
#     Click Button     xpath://button[@class='bp']
#     sleep            3
9. คลิ๊กไปที่ SHOW Graph
    click element    xpath://input[@value="SHOW"]
    sleep            2
10. คลิ๊กไปที่ Select all
    Click Link    Select all
11. คลิ๊กไปที่ Report By PROVINCE
    click element                    xpath://input[@value="[ECELL (DMR)].[ERI EUTRAN GEO Dimension].[ERI eUTRAN GEO].[PROVINCE]"]
    sleep                3
12. คลิ๊กไปที่ NOR
    click element                    xpath://option[@value="NOR"]
    Click Button                     xpath://button[@class='bp']
    sleep              3
13. คลิ๊กไปที่ปุ่ม CHIANG MAI
    click element                    xpath://option[@value="CHIANG MAI"]
    Click Button                     xpath://button[@class='bp']
    sleep            3
# 14. คลิ๊กไปที่ DISTRICT=CHIANG MAI-MUEANG CHIANG MAI
#     click element                    xpath://option[@value="CHIANG MAI-MUEANG CHIANG MAI"]
#     Click Button                     xpath://button[@class='bp']
#     sleep            3
# 15. คลิ๊กไปที่ SUB DISTRICT=CHIANG MAI-MUEANG CHIANG MAI-SUTHEP
#     click element    xpath://option[@value="CHIANG MAI-MUEANG CHIANG MAI-SUTHEP"]
#     Click Button     xpath://button[@class='bp']
#     sleep            4
# 16. คลิ๊กไปที่ SITE NAME=CMI1742P
#     click element    xpath://option[@value="CMI1742P"]
#     Click Button     xpath://button[@class='bp']
#     sleep            4
    #execute javascript        window.scrollTo(0,document.body.scrollHeight)
17. เลือก Datetime
    #คลิกแก้ไขวันที่แต่ต้องพิมพ์เอง
    #click element                       xpath://input[@class="clsSelectDateEditBox"]
    #29/09/2019 ของ Day   06/10/2019 ของ Week
    #07/09/2020 ของ Day ใช้อันนี้
    execute javascript        window.scrollTo(0,4500)
    click element    xpath://img[@src="/ibmcognos/skins/../prompting/reportskin/prompting/images/icon_datepicker.gif"]
    click element    xpath=/html/body/div[3]/table/tbody/tr/td/table[3]/tbody/tr[3]/td[2]    
    # click element    xpath://img[@class="clsBtnYearDown"]
    # click element    xpath=/html/body/div[3]/table/tbody/tr/td/table[2]/tbody/tr[2]/td[3]
    # click element    xpath=/html/body/div[3]/table/tbody/tr/td/table[3]/tbody/tr[6]/td[1]
    sleep         3
18. เลือก BH Type = Daily BH
    click element    xpath://input[@value="DBH"]
    sleep          3
19. เลือก BH Level = Region
    click element    xpath://input[@value="[ECELL (DMR)].[ERI GROUP DBH Dimension].[ERI GEO REGION].[BH].[TSTAMP]"]
    sleep          3
20. คลิก ปุ่ม Process all prompt values
    Click Button    xpath://button[@class='bp']
    sleep          3
21. คลิก Link Precal
    Click element         xpath=/html/body/form[1]/table/tbody/tr[3]/td/div/div[1]/table/tbody/tr[3]/td/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td/div/div/span/span
    sleep           30
    log to console            ครบ 30
22. Download Document Excel
    Select window              title=Ericsson LTE eUTRAN Performance, Cell Report (Frist Piority) GEO-DBH - IBM Cognos Viewer
    log to console             เลือก Tab window
    Click element              xpath://table[@id="_NS_runIn"]
    Click element              xpath://table[@id="_NS_viewInExcel"]
    Click element              xpath://img[@src="/ibmcognos/rv/images/action_view_excel_2007.gif"]
    log to console             คลิก ปุ่มโหลดเอกสาร Excel แล้ว
    Close All Browsers