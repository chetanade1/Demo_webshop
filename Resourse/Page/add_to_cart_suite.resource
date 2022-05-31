*** Settings ***
Documentation       add the item into the cart

Resource        ../base/common_functionality.resource

*** Variables ***
${LOGIN_LINK_LOCATOR}       partial link=Log in
${EMAIL_LOCATOR}            id=Email
${PASSWORD_LOCATOR}         id=Password
${REMEMBER_LOCATOR}         id=RememberMe
${SUBMIT_LOCATOR}           xpath=//input[@value='Log in' and @type='submit']
${APPREAL_LINK_LOCAROR}     partial link=Apparel & Shoes
${DRESS_LOCATOR}           partial link=50's Rockabilly Polka Dot Top JR Plus Size
${ADD_TO_CART_LOCATOR}      id=add-to-cart-button-5
${LOGOUT_LOCATOR}           partial link=Log out
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

Click On Appreal and Shoes
    [Documentation]     this keyword will click on appreal and shoes link
    Click Element    ${APPREAL_LINK_LOCAROR}

Select The Dress
    [Documentation]     this keyword will select the dress
    Click Element    ${DRESS_LOCATOR}

Click On Add To Cart
    [Documentation]     this keyword will click on add to cart
    Click Element    ${ADD_TO_CART_LOCATOR}

Click On Logout
    [Documentation]     this keyword will click on logout
    Click Element    ${LOGOUT_LOCATOR}





