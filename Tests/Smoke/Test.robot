*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Variables/GlobalVariables.robot

*** Test Cases ***
Open Example Website
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep   5
    Title Should Be    OrangeHRM
    Capture Page Screenshot
    Close Browser