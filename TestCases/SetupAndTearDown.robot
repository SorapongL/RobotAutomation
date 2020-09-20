***Settings***
#ทำก่อนสุด 1
Suite Setup       log to console    Opening Browser
#ทำหลังสุด 4
Suite Teardown    log to console    Closing Browser
#ทำก่อน Testcase 2
Test Setup       log to console    Login to application
#ทำหลัง Testcase 3
Test Teardown    log to console    Logout from application

***Test Cases***
TC1 Prepaid Recharge
    log to console    This is Prepaid Recharge testcase
TC2 Postpaid Recharge
    log to console    This is Postpaid Recharge testcase
TC3 Search
    log to console    This is Search test case
TC4 Advanced Search
    log to console    This is Ads Search test case