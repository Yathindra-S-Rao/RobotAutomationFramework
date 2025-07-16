*** Settings ***
Library     SeleniumLibrary
Resource    ../Library/Custom_Keywords/Generics.robot
Resource    ../Resources/Locators/MyInfoLocators.robot


*** Keywords ***
Click My Info Menu
    Mouse Over Element      ${MYINFO_MENU}      My Info menu item
    Click Page Element      ${MYINFO_MENU}      My Info menu item

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
    Click Page Button       ${ADD}              Add
    Upload Files            ${FILE_UPLOAD}      test.png
    Click Page Button       ${CUSTOM_SAVE}      Custom Save

Click Save
    Click Page Button       ${SAVE}             *Save