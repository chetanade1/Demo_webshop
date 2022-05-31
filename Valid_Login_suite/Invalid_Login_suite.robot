*** Settings ***

Resource    ../Resourse/base/common_functionality.resource
Resource    ../Resourse/Page/login_pages.resource
Test Setup      Launch browser
Test Teardown   End Browser
Test Template      TC Invalid login suite
*** Test Cases ***
TC1      akashshinde12@gmail.com    akki@123



*** Keywords ***
TC Invalid login suite

        [Arguments]        ${email}  ${password}
        Click On Login Link
        Enter Email Address   ${email}
        Enter the Password    ${password}
        Check The Remember Checkbox
        Click On Submit
        Close Browser