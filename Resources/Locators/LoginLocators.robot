*** Variables ***

${USERNAME_FIELD}       name=username
${PASSWORD_FIELD}       name=password
${LOGIN_BUTTON}         xpath=//button[text()=' Login ']
${FORGOT_PASSWORD}      xpath=//p[text()='Forgot your password? ']//parent::div
${RESET_PASSWORD}       xpath=//button[contains(@class,'orangehrm-forgot-password') and text()=' Reset Password ']
${LOGIN_ERROR_MSG}      xpath=//div[@class='orangehrm-login-error']//p
