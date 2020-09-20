***Settings***
Library           Selenium2Library
Resource          ../Resources/LoginResource.robot
Library           DataDriver      ./TestData/LoginData.xlsx    sheet_name=Sheet1
Suite Setup       Open my Browser
Suite Teardown    Close Browsers
Test Template     Invalid Login

***Test Cases***
#ข้อมูลใน excel ต้องอยู่แถวบนสุดเท่านั้นคอลัมไหนก็ได้
LoginTestwithExcel    ${username}    and    ${password}



***Keywords***
Invalid Login
    [Arguments]                        ${username}    ${password}
    Input username                     ${username}
    Input pwd                          ${password}
    click login button
    Error message should be visible
