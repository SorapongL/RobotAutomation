***Settings***


***Test Cases***
#-i เลือกรันที่มีแท็กนั้น
#-e เลือกรันที่ไม่เอาแท็กนั้น
TC1 User RegistrationTest
    [Tags]    regression
    Log to console      This is user registration test
    Log to console      user registration test is over
TC2 LoginTest
    [Tags]    sanity
    Log to console      This is Login test
    Log to console      Login test is over
TC3 Change user setting
    [Tags]    regression
    Log to console      This is chang user setting test
    Log to console      Change user setting test is over
TC4 Logout Test
    [Tags]    sanity
    Log to console       This is logout test
    log to console       logout test is over