*** Settings ***
Library  SeleniumLibrary
Resource  ../Library/Custom_Keywords/Generics.robot
Resource  ../Resources/Locators/LoginLocators.robot
Resource  ../Library/Variables/GlobalVariables.robot


*** Variables ***
${SUCCESS_MAIL_MESSAGE}     Reset Password link sent successfully

*** Keywords ***
Enter Valid Username
    Enter Page Text     ${USERNAME_FIELD}   ${VALID_USERNAME}   Username textbox

Enter Valid Password
    Enter Page Password  ${PASSWORD_FIELD}   ${VALID_PASSWORD}   Password textbox

Click Login Button
    click page button  ${LOGIN_BUTTON}   Login Button

Verify Dashboard
    wait until location contains   dashboard
    ${current_url}=     get location
    should be equal as strings  ${current_url}  ${dashboard_url}

Enter Invalid Username
    Enter Page Text  ${USERNAME_FIELD}   something  Username textbox

Enter Invalid Password
    Enter Page Password  ${PASSWORD_FIELD}   something  Password textbox

Verify Error Message
    wait until element is visible   ${LOGIN_ERROR_MSG}
    ${err}=     Get Element Text    ${LOGIN_ERROR_MSG}      Error Message
    should be equal as strings  ${err}  Invalid credentials

Click Forgot Password
    Click Page Element      ${FORGOT_PASSWORD}      Forgot Password button

Click Reset Password
    click page button       ${RESET_PASSWORD}       Reset Password button

Verify Mail Link Message
    wait until page contains    ${success_mail_message}
    page should contain         ${success_mail_message}

Enter Username
    [Arguments]             ${username}
    Enter Page Text         ${USERNAME_FIELD}       ${username}     Username

Enter Password
    [Arguments]             ${password}
    Enter Page Password     ${PASSWORD_FIELD}       ${password}     Password
