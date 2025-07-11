*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Keywords/LoginKeywords.robot
Resource    ../BaseTest.robot
Test Setup  Test Setup
Test Teardown  Test Teardown

*** Test Cases ***
Open Example Website
    Click Forgot Password
    Enter Valid Username
    Click Reset Password
    Verify Mail Link Message