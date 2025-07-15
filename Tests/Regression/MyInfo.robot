*** Settings ***
Resource        ../BaseTest.robot
Resource        ../../Keywords/LoginKeywords.robot
Resource        ../../Keywords/MyInfoKeywords.robot
Test Setup      Test Setup
Test Teardown   Test Teardown


*** Test Cases ***
Add My Info
    [Documentation]    Test login with correct username and password.
    Enter Valid Username
    Enter Valid Password
    Click Login Button

    Click My Info Menu
    Click Personal Details
    Enter Firstname
    Enter Middlename
    Enter Lastname
    Select Nationality
    Select Marital Status
    Select Gender
    Click Save
