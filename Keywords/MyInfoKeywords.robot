*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Locators/MyInfoLocators.robot
Resource    ../../Library/Custom_Keywords/Generics.robot

*** Keywords ***
Click My Info Menu
    Click Page Element

Click Personal Details
Enter Firstname
Enter Middlename
Enter Lastname
Select Nationality
Select Marital Status
Select Gender
Click Save