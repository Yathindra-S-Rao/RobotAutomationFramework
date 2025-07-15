*** Variables ***
${MYINFO_MENU}              xpath=//a//span[text()='My Info']//ancestor::li
${LHS_PERSONAL_DETAILS}     //a[text()='Personal Details']
${FIRSTNAME}                name=firstName
${MIDDLENAME}               name=middleName
${LASTNAME}                 name=lastName

${NATIONALITY_DD}           xpath=//label[text()='Nationality']//parent::div//following-sibling::div
${MARITAL_STATUS_DD}        xpath=//label[text()='Marital Status']//parent::div//following-sibling::div

