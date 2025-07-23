*** Settings ***
Resource  ../../Keywords/LoginKeywords.robot
Resource  ../BaseTest.robot
Test Setup      Test Setup
Test Teardown   Test Teardown

*** Test Cases ***
Validate Successful Login
    [Tags]              smoke
    [Documentation]     Test login with correct username and password.
    Enter Valid Username
    Enter Valid Password
    Click Login Button
    Verify Dashboard

Validate Login Failure
    [Tags]              sanity
    [Documentation]     Test login with incorrect username and password.
    Enter Invalid Username
    Enter Invalid Password
    Click Login Button
    Verify Error Message

