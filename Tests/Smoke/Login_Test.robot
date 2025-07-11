*** Settings ***
Resource  ../Resources/Keywords/LoginKeywords.robot
Resource  ../BaseTest.robot
Test Setup      Test Setup
Test Teardown   Test Teardown

*** Test Cases ***
Validate Successful Login
    Enter Valid Username
    Enter Valid Password
    Click Login Button
    Verify Dashboard

Validate Login Failure
    Enter Invalid Username
    Enter Invalid Password
    Click Login Button
    Verify Error Message

