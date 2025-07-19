*** Settings ***
Library     SeleniumLibrary
Resource    ../Library/Custom_Keywords/Generics.robot
Resource    ../Resources/Locators/MyInfoLocators.robot


*** Keywords ***
Click My Info Menu
    Click Page Element      ${MYINFO_MENU}      My Info menu item
    Sleep       3
    Take Page Screenshot    MyInfo

Get Header Name
    ${text}=    Get Element Text    //span[@class="oxd-topbar-header-breadcrumb"]//h6       Header of the Page
    should be equal as strings      ${text}      PIM

Click Personal Details
    Click Page Element      ${LHS_PERSONAL_DETAILS}     Personal Details LHS option

Enter Firstname
    Clear Text              ${FIRSTNAME}        Firstname
    Enter Page Text         ${FIRSTNAME}        Raveena         Firstname

Enter Middlename
    Clear Text              ${MIDDLENAME}       Middlename
    Enter Page Text         ${MIDDLENAME}       K S             Middlename

Enter Lastname
    Clear Text              ${LASTNAME}         Lastname
    Enter Page Text         ${LASTNAME}         Kolige          Lastname

Select Nationality

Select Marital Status

Select Gender
    Click Page Element      ${FEMALE}           Female

Add Attachments
    SCROLL TO EXTREAM BOTTOM
    Click Page Button       ${ADD}              Add
    Upload Files From Windows Popup             ${BROWSE}      test.png      Browse to Upload
    Click Page Button       ${CUSTOM_SAVE}      Custom Save

Click Save
    Click Page Button       ${SAVE}             *Save