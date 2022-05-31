*** Settings ***

Library     SeleniumLibrary
Resource   ../Resourse/base/common_functionality.resource

Library   DataDriver      file=../Test_Data/robotframework.xlsx       sheet_name=DemoWebShop

Test Setup      Launch browser
Test Teardown    End Browser
Test Template   TC valid register suite

*** Test Cases ***
TC1

*** Keywords ***
TC valid register suite
        [Arguments]   ${first_name}   ${last_name}    ${email}    ${password}     ${re_password}

        Click Element    partial link=Register
        Click Element    id=gender-male
        Input Text    id=FirstName    ${first_name}
        Input Text    id=LastName     ${last_name}
        Input Text    id=Email        ${email}
        Input Password    id=Password    ${password}
        Input Password    id=ConfirmPassword    ${re_password}
        Close Browser
        


