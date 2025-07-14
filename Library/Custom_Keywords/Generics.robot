*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${dd_options}      xpath=//div[@role='option']//span[text()=' ']

*** Keywords ***
Click Page Button
    [Arguments]     ${element}      ${element_name}
    wait until element is visible   ${element}
    click button    ${element}
    log             Clicked on the button ${element_name}

Click Page Element
    [Arguments]     ${element}      ${element_name}
    wait until element is visible   ${element}
    scroll element into view        ${element}
    click button    ${element}
    log             Clicked on the element ${element_name}

Enter Page Text
    [Arguments]     ${element}      ${element_value}        ${element_name}
    wait until element is visible   ${element}
    input text      ${element}      ${element_value}
    log             Entered ${element_value} in the the ${element_name}

Enter Page Password
    [Arguments]     ${element}      ${element_value}        ${element_name}
    wait until element is visible   ${element}
    input Password      ${element}      ${element_value}
    log             Entered ******** in the the ${element_name}

Select Value From Dropdown
    [Arguments]     ${element}      ${option_value}     ${element_name}
    wait until element is visible   ${element}
    Click Page Element              ${element}          ${element_name}
    ${locator}=     Replace String      ${DD_OPTIONS}    variable    ${option_value}
    wait until element is visible       ${locator}
    Click Page Element                  ${locator}      dropdown value ${option_value}


