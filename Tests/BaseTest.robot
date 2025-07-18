*** Settings ***
Library     SeleniumLibrary
Library     DateTime
Resource    ../Library/Variables/GlobalVariables.robot

*** Keywords ***
Test Setup
    [Documentation]     Opening the ${BROWSER} Browser and Navigating to the ${LOGIN_URL}
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window

Test Teardown
    ${today}=    Get Current Date    result_format=%d%m%y_%H%M%S
    Capture Page Screenshot         ${OUTPUT_DIR}/Screenshots/TearDown_${today}.png
    Close All Browsers