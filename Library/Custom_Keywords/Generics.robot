*** Settings ***
Library  SeleniumLibrary

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

