*** Settings ***
Resource        ../BaseTest.robot
Resource        ../../Keywords/LoginKeywords.robot
Resource        ../../Keywords/MyInfoKeywords.robot
#Library         DataDriver      ../../Data/Test_Data/MyInfo.csv      dd_kwargs=True
Library         DataDriver      ../../Data/Test_Data/MyInfo.xlsx        dd_kwargs=True
Test Setup      Test Setup
Test Teardown   Test Teardown
Test Template   Add My Info

*** Test Cases ***
Test Add My Info

*** Keywords ***
Add My Info
    [Tags]              regression
    [Arguments]         ${kwargs}
    log many            ${kwargs}
    Log To Console      Executing test for user: ${kwargs.username}


    Enter Username      ${kwargs.username}
    Enter Password      ${kwargs.password}
    Click Login Button

    Click My Info Menu
    Get Header Name
    Click Personal Details
    Enter Firstname             ${kwargs.firstname}
    Enter Middlename            ${kwargs.middlename}
    Enter Lastname              ${kwargs.lastname}
#    Select Nationality
#    Select Marital Status
    Select Gender
#    Add Attachments
    Click Save