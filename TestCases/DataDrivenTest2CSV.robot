***Settings***
Library           Selenium2Library
Resource          ../Resources/LoginResource.robot
Library           DataDriver                         ./TestData/LoginData.csv
Suite Setup       Open my Browser
Suite Teardown    Close Browsers
Test Template     Invalid Login

***Test Cases***
LoginTestwithCSV    ${username}    and    ${password}



***Keywords***
Invalid Login
    [Arguments]                        ${username}    ${password}
    Input username                     ${username}
    Input pwd                          ${password}
    click login button
    Error message should be visible
