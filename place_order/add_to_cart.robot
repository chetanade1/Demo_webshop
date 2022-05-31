*** Settings ***

Resource       ../Resourse/base/common_functionality.resource
Resource    ../Resourse/Page/add_to_cart_suite.resource

Test Setup      Launch browser
Test Teardown   End Browser

Test Template   TC4 add to cart
*** Test Cases ***
TC4          shindeakash121@gmail.com   Chetan@123



*** Keywords ***
TC4 add to cart
       [Arguments]       ${email}    ${password}

       Click On Login Link
       Enter Email Address   ${email}
       Enter the Password   ${password}
       Check The Remember Checkbox
       Click On Submit
       Click On Appreal and Shoes
       Select The Dress
       Click On Add To Cart
       Click On Logout
       Close Browser