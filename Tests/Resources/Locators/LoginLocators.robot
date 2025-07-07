*** Variables ***

${USERNAME_FIELD}      xpath=//input[@id='username']
${PASSWORD_FIELD}      xpath=//input[@id='password']
${LOGIN_BUTTON}        xpath=//button[@id='loginBtn']
${DASHBOARD_HEADER}    xpath=//h1[contains(text(), 'Dashboard')]
${LOGIN_ERROR_MSG}     xpath=//div[@class='error' and contains(., 'Invalid')]
