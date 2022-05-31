*** Settings ***
Documentation       this file handle all the element in the login pages
...                 of opencart portal

Resource        ../base/common_functionality.resource
*** Variables ***
${LOGIN_LINK_LOCATOR}       partial link=Log in
${EMAIL_LOCATOR}            id=Email
${PASSWORD_LOCATOR}         id=Password
${REMEMBER_LOCATOR}         id=RememberMe
${SUBMIT_LOCATOR}           xpath=//input[@value='Log in' and @type='submit']

*** Keywords ***

Click On Login Link

    [Documentation]     this keyword will click on login link provided
    Click Element      ${LOGIN_LINK_LOCATOR}
    
Enter Email Address
    [Arguments]     ${email}
    [Documentation]     this keyword will enter the email provided
    Input Text    ${EMAIL_LOCATOR}    ${email}
    
Enter the Password
    [Arguments]         ${password}
    [Documentation]     this keyword will enter the password password link
    Input Text   ${PASSWORD_LOCATOR}    ${password}

Check The Remember Checkbox
    [Documentation]     this keyword will click on remember me checkbox
    Click Element    ${REMEMBER_LOCATOR}

Click On Submit
    [Documentation]     this keyword will click on the Login button
    Click Element    ${SUBMIT_LOCATOR}




