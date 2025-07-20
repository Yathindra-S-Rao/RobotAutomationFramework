*** Settings ***
Resource            ../../Keywords/LoginKeywords.robot
Library             DataDriver      ../../Data/Test_Data/Data.xlsx      sheet_name=Invalid_Login_Credentials
Resource            ../BaseTest.robot
Suite Setup         Test Setup
Suite Teardown      Test Teardown
Test Template       Verify Invalid Login

*** Test Cases ***

Login Test With Invalid Credentials ${username} and ${password}

*** Keywords ***
Verify Invalid Login
    [Documentation]    Test login with incorrect username and password.
    [Arguments]         ${username}     ${password}
    Enter Username      ${username}
    Enter Password      ${password}
    Click Login Button
    Verify Error Message