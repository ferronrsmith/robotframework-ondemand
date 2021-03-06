*** Settings ***
Documentation     A resource file containing the demo app specific keywords and variables that create our own domain specific language. Also SeleniumLibrary itself is imported here so that tests only need to import this resource file.
Library           Selenium2Library
Library           libs/Selenium2LibraryExt.py

*** Variables ***
${DELAY}          0
${HOST}           carepass.com
${LOGIN URL}      https://${HOST}/carepass/mobile/login
${ACCOUNT URL}    https://www.${HOST}/carepass/mobile/home
${VALID USER}     ferron.hanse
${VALID PASSWD}    Wizard12
${BROWSER}        iphone
${SELENIUM HOST}    http://ferron_smith:3d4930e4-9722-4bb9-82a2-fd380d5936a2@ondemand.saucelabs.com:80/wd/hub
${DESIRED_CAPABILITIES}    name:Testing RobotFramework Selenium2Library,platform:iphone

*** Keywords ***
Open Login Page
    [Documentation]    Maximize Browser Window
    Open Browser    ${LOGIN URL}    ${BROWSER}    remote_url=${SELENIUM HOST}    desired_capabilities=${DESIRED_CAPABILITIES}
    Set Selenium Speed    ${DELAY}

Go To Login Page
    Go To    ${LOGIN URL}
    Title Should Be    Login - Sauce Labs

Input Username
    [Arguments]    ${username}
    Input Text    USER    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    PASSWORD    ${password}

Submit Credentials
    Click Page Element    css=#loginForm > input.button.save-mobile

Account Page Should Be Open
    Location Should Be    ${ACCOUNT URL}
    Title Should Be    CarePass - Mobile
