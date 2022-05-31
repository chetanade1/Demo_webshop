*** Settings ***


Resource        ../Resourse/Page/login_pages.resource
Resource      ../Resourse/base/common_functionality.resource
Test Setup      Launch browser
Test Teardown    End Browser
Test Template       TC valid login suite
*** Test Cases ***
TC1         shindeakash121@gmail.com    Chetan@123

*** Keywords ***
TC valid login suite

        [Arguments]          ${email}     ${password}
        Click On Login Link
        Enter Email Address     ${email}
        Enter the Password      ${password}
        Check The Remember Checkbox
        Click On Submit
        Close Browser