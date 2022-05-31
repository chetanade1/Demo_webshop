*** Settings ***
Documentation       the file handles all the element under opencart homepages pages

Resource        ../base/common_functionality.resource
*** Variables ***
${REGISTER_LINK_LOCATOR}       partial link=Register
${RADIO_LOCATOR}            id=gender-male
${FIRST_NAME_LOCATOR}       id=FirstName
${SECOND_NAME_LOCATOR}      id=LastName
${EMAIL_LOCATOR}            id=Email
${PASSWORD_LOCATOR}         id=Password
${CONFIRM_PASS_LOCATOR}     id=ConfirmPassword



*** Keywords ***
Click On Register Link
    [Documentation]    this keyword will click on register link
    Click Element    ${REGISTER_LINK_LOCATOR}

Click On Radio Button
    [Documentation]     this keyword will click on the radio button provided
    Click Element    ${RADIO_LOCATOR}

Enter First Name
    [Arguments]         ${first_name}
    [Documentation]     this keyword will provide a first name of user
    Input Text    ${FIRST_NAME_LOCATOR}    ${first_name}
    
Enter Last Name
    [Arguments]     ${last_name}
    [Documentation]     this keyword will provided a last name of user
    Input Text      ${SECOND_NAME_LOCATOR}    ${last_name}

    
Enter Email Address
    [Arguments]     ${email}
    [Documentation]     this keyword will provided a email address of user
    Input Text    ${EMAIL_LOCATOR}    ${email}

Enter Password
    [Arguments]     ${password}
    [Documentation]     this keyword will provided a password of user
    Input Text      ${PASSWORD_LOCATOR}       ${password}

Enter Confirm Password
    [Arguments]     ${re_password}
    [Documentation]     this keyword will provided a confirm password of user
    Input Text      ${CONFIRM_PASS_LOCATOR}       ${re_password}

    


    
