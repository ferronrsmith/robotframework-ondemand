*** Settings ***
Documentation  A test suite with a single test for valid login. This test has a workflow that is created using keywords from the resource file.

Resource       ../../keywords/resource.robot


*** Test Cases ***

Valid Login
    Open Login Page
    Input Username  ferron.hanse
    Input Password  Wizard12
    Submit Credentials
    Account Page Should Be Open
    [Teardown]  Close Browser
