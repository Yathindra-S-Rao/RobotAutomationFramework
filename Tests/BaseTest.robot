*** Settings ***
Library     SeleniumLibrary
Resource    Resources/Variables/GlobalVariables.robot

*** Keywords ***

Test Setup
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window

Test Teardown
    Capture Page Screenshot
    Close All Browsers