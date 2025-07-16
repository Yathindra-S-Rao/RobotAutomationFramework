*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${dd_options}      xpath=//div[@role='option']//span[text()=' ']

*** Keywords ***
Click Page Button
    [Arguments]     ${element}      ${element_name}
    wait until element is visible   ${element}
    scroll element into view        ${element}
    click button    ${element}
    log             Clicked on the button ${element_name}

Click Page Element
    [Arguments]     ${element}      ${element_name}
    wait until element is visible   ${element}
    scroll element into view        ${element}
    click element    ${element}
    log             Clicked on the element ${element_name}

Click Element Using JavaScript
    [Arguments]     ${element}      ${element_name}
    sleep           5s
    execute javascript      arguments[0].click();       ${element}
    log             Clicked on element ${element_name} using JavaScript

Enter Page Text
    [Arguments]                     ${element}      ${element_value}        ${element_name}
    wait until element is visible   ${element}
    input text                      ${element}      ${element_value}
    log                             Entered ${element_value} in the the ${element_name}

Clear Text
    [Arguments]                     ${element}      ${element_name}
    wait until element is visible   ${element}
    run keyword and ignore error        clear element text              ${element}
    run keyword and ignore error        execute javascript              arguments[0].value = '';     ${element}
    run keyword and ignore error        click element       ${element}
    run keyword and ignore error        press keys          ${element}      CTRL+A
    Sleep                               200ms
    run keyword and ignore error        press keys          ${element}      DELETE
    log                                 Cleared the text in ${element_name}

Enter Page Password
    [Arguments]     ${element}      ${element_value}        ${element_name}
    wait until element is visible   ${element}
    input Password      ${element}      ${element_value}
    log             Entered ******** in the the ${element_name}

Upload Files
    [Documentation]                 Kindly place the file to be uploaded under the folder Library/Upload_Files
    [Arguments]                     ${element}      ${file_to_upload}
    wait until element is visible   ${element}
    scroll element into view        ${element}
    choose file                     ${element}      ${CURDIR}/../Upload_Files/${file_to_upload}
    log                             Uploaded the file ${file_to_upload}

Select Page Radio Button
    [Arguments]                     ${group_name}       ${value}         ${element_name}
    wait until element is visible   ${group_name}
    select radio button             ${group_name}       ${value}
    log                             Selected ${element_name} radio button

Select Value From Dropdown
    [Arguments]                     ${element}          ${option_value}     ${element_name}
    wait until element is visible   ${element}
    Click Page Element              ${element}          ${element_name}
    ${locator}=     Set Variable    xpath=//div[@role='option']//span[text()='${option_value}']
#    ${locator}=     Set Variable    Replace String      ${DD_OPTIONS}    variable    ${option_value}
    wait until element is visible       ${locator}
    Click Page Element                  ${locator}      dropdown value ${option_value}

Mouse Over Element
    [Arguments]     ${element}      ${element_name}
    wait until element is visible   ${element}
    mouse over      ${element}
    log             Mouse arrow pointed on the ${element_name}
