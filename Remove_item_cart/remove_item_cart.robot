*** Settings ***
Resource        ../Resourse/base/common_functionality.resource
Test Teardown       End Browser
Test Setup          Launch browser
Test Template       TC5 remove item cart
*** Test Cases ***
TC5       Log in      sindeakash121@gmail.com     Chetan@123


*** Keywords ***
TC5 remove item cart
       [Arguments]         ${login}    ${email}  ${password}

       Click Element    partial link= ${login}
       Input Text    id=Email    ${email}
       Input Text    id=Password     ${password}
       Select Checkbox    id=RememberMe
       Click Element    xpath=//input[@value='Log in' and @type='submit']
       Click Element    partial link=Apparel & Shoes
       Click Element    partial link=50's Rockabilly Polka Dot Top JR Plus Size
       Click Element    id=add-to-cart-button-5
       Click Element    partial link=Shopping cart
       Click Element    xpath=//input[@name="removefromcart"]
       Click Element    name=updatecart
       Click Element    partial link=Log out
       Close Browser