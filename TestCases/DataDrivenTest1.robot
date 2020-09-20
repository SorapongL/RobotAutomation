***Settings***
Library           Selenium2Library
Resource          ../Resources/LoginResource.robot
Suite Setup       Open my Browser
Suite Teardown    Close Browsers
Test Template     Invalid Login
#Test Template    Success Login
#ใช้ได้ทีละ 1 Test Template

#ตรง Username                 Password ใส่หรือไม่ใส่ก็ไม่มีผลเขียนเฉยๆเพื่อให้รู้
#ชื่อ Test Cases ใช้ชื่ออะไรก็ได้
***Test Cases***              Username                                               Password
Right User Empty Password     admin@yourstore.com                                    ${Empty}
Right User Wrong Password     admin@yourstore.com                                    wxyz
Wrong User Right Password     adm@yourstore.com                                      admin
Wrong User Empty Password     adm@yourstore.com                                      ${Empty}
Wrong User Wrong Password     adm@yourstore.com                                      xyz
#Right User Right Password    admin@yourstore.com                                    admin




***Keywords***
Invalid Login
    [Arguments]                        ${username}    ${password}
    Input username                     ${username}
    Input pwd                          ${password}
    click login button
    Error message should be visible

# Success Login
#    [Arguments]           ${username}    ${password}
#    Input username        ${username}
#    Input pwd             ${password}
#    click login button
#    Login Success
#    click logout link




