*** Settings ***
Library  SeleniumLibrary
Resource  ../../../Library/Custom_Keywords/Generics.robot
Resource  ../Locators/LoginLocators.robot
Resource  ../Variables/GlobalVariables.robot

*** Keywords ***
Enter Valid Username
    wait until element is visible  ${USERNAME_FIELD}
    input text  ${USERNAME_FIELD}   ${VALID_USERNAME}

Enter Valid Password
    wait until element is visible  ${PASSWORD_FIELD}
    input password  ${PASSWORD_FIELD}   ${VALID_PASSWORD}

Click Login Button
    wait until element is visible  ${LOGIN_BUTTON}
    click button  ${LOGIN_BUTTON}

Verify Dashboard
    wait until location contains   dashboard
    ${current_url}=     get location
    should be equal as strings  ${current_url}  ${dashboard_url}

Enter Invalid Username
    wait until element is visible  ${USERNAME_FIELD}
    input text  ${USERNAME_FIELD}   something

Enter Invalid Password
    wait until element is visible  ${PASSWORD_FIELD}
    input password  ${PASSWORD_FIELD}   something

Verify Error Message
    wait until element is visible   ${LOGIN_ERROR_MSG}
    ${err}=     get text    ${LOGIN_ERROR_MSG}
    should be equal as strings  ${err}  Invalid credentials