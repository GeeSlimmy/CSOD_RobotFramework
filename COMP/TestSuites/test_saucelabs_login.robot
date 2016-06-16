*** Settings ***
Test Setup        Open test browser
Test Teardown     Close test browser
Library           Selenium2Library
Library           ../Resources/Libraries/SauceLabs.py

*** Variables ***
${BROWSER}        firefox
${REMOTE_URL}     http://gfung:3e42e523-3f0e-4d5b-b68a-6a474253aacb@ondemand.saucelabs.com:80/wd/hub
${DESIRED_CAPABILITIES}    platform:OS X 10.9,browserName:chrome
${LOGIN_FAIL_MSG}    Incorrect username or password.
${TEST_NAME}      Test Saucelabs Login
${SUITE_NAME}     SauceTestSuiteFireFox

*** Test Cases ***
Incorrect username or password
    [Tags]    Login
    Go to    https://saucelabs.com/login
    Page should contain element    id=username
    Page should contain element    id=password
    Input text    id=username    anonymous
    Input text    id=password    secret
    Click button    id=submit
    Page should contain    ${LOGIN_FAIL_MSG}

*** Keywords ***
Open test browser
    Open Browser    about:    ${BROWSER}    remote_url=${REMOTE_URL}    desired_capabilities=${DESIRED_CAPABILITIES}

Close test browser
    Run keyword if    '${REMOTE_URL}' != ''    Report Sauce Status    ${SUITE_NAME} | ${TEST_NAME}    ${TEST_STATUS}    @{TEST_TAGS}    ${REMOTE_URL}
    Close all browsers
