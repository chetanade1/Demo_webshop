*** Settings ***

Resource    ../Resourse/base/common_functionality.resource
Resource    ../Resourse/Page/register_suite.resource
Test Setup      Launch browser
Test Teardown    End Browser
Test Template   TC valid register suite

*** Test Cases ***
TC1    akash  shinde  shindeakash121@gmail.com    Chetan@123  Chetan@123

*** Keywords ***
TC valid register suite
        [Arguments]   ${first_name}   ${last_name}    ${email}    ${password}     ${re_password}

        Click On Register Link
        Click On Radio Button
        Enter First Name      ${first_name}
       Enter Last Name       ${last_name}
        Enter Email Address      ${email}
        Enter Password      ${password}
        Enter Confirm Password    ${re_password}
        Close Browser
        


