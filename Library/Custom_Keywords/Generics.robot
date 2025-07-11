*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
click_button
    [Arguments]     ${element}      ${element_name}
    wait until element is visible   ${element}
    click button    ${element}
    log             Clicked on the button ${element_name}

