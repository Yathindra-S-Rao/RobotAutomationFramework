*** Settings ***
Library     SeleniumLibrary
Library     DateTime
Resource    ../Library/Variables/GlobalVariables.robot

*** Keywords ***
Test Setup
    [Documentation]     Opening the ${BROWSER} Browser and Navigating to the ${LOGIN_URL}
    IF      ${HEADLESS}
        Open Browser        ${LOGIN_URL}        ${HEADLESS_CHROME}
    ELSE
        Open Browser        ${LOGIN_URL}        ${BROWSER}
    END
    Maximize Browser Window

Test Teardown
    ${today}=                       Get Current Date       result_format=%d%m%y_%H%M%S
    Capture Page Screenshot         ${OUTPUT_DIR}/Screenshots/TearDown_${today}.png
    Close All Browsers