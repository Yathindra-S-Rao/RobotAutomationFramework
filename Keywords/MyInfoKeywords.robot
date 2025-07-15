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
    Enter Page Text         ${FIRSTNAME}        Yathindra       Firstname

Enter Middlename
    Enter Page Text         ${MIDDLENAME}       S       Middlename

Enter Lastname
    Enter Page Text         ${LASTNAME}        Rao       Lastname

Select Nationality

Select Marital Status
Select Gender
Click Save