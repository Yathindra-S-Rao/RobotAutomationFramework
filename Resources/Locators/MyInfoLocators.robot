*** Variables ***
${MYINFO_MENU}              xpath=//a//span[text()='My Info']//ancestor::li
${LHS_PERSONAL_DETAILS}     //a[text()='Personal Details']
${FIRSTNAME}                name=firstName
${MIDDLENAME}               name=middleName
${LASTNAME}                 name=lastName
${MALE}                     xpath=//input[@value='1']//parent::label
${FEMALE}                   xpath=//input[@value='2']//parent::label
${NATIONALITY_DD}           xpath=//label[text()='Nationality']//parent::div//following-sibling::div
${MARITAL_STATUS_DD}        xpath=//label[text()='Marital Status']//parent::div//following-sibling::div
${ADD}                      xpath=//button[text()=' Add ']
${FILE_UPLOAD}              xpath=//input[@type='file']
${SAVE}                     xpath=(//button[text()=' Save '])[position()=1]
${CUSTOM_SAVE}              xpath=(//button[text()=' Save '])[position()=2]
