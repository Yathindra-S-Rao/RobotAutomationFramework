*** Settings ***
Resource        ../BaseTest.robot
Resource        ../../Keywords/LoginKeywords.robot
Resource        ../../Keywords/MyInfoKeywords.robot
Library         DataDriver      ../../Data/Test_Data/MyInfo.xlsx     sheet_name=MyInfo      dd_kwargs=True
Test Setup      Test Setup
Test Teardown   Test Teardown
Test Template   Add My Info

*** Test Cases ***
Test Add My Info    ${username}

*** Keywords ***
Add My Info
    [Arguments]     &{kwargs}
    log many        ${kwargs}

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