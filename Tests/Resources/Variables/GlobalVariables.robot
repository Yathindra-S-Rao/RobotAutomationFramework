*** Variables ***

# QA Environment URLs
${LOGIN_URL}         https://opensource-demo.orangehrmlive.com/
${DASHBOARD_URL}     https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index

# User Credentials
${VALID_USERNAME}    Admin
${VALID_PASSWORD}    admin123

# Browser Configuration
${BROWSER}           Chrome
${HEADLESS}          True

# Timeouts
${IMPLICIT_WAIT}     5s
${PAGE_LOAD_TIMEOUT} 10s

# Reusable messages or system flags
${ENV}               QA
