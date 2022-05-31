*** Settings ***
Documentation   This file contains browser configurations details,reusable keyword for automation

Library     SeleniumLibrary
Library     AutoRecorder


*** Variables ***
${BROWSER_NAME}     gc
${URL}              http://demowebshop.tricentis.com/

*** Keywords ***
Launch browser

    IF    '${BROWSER_NAME}'== 'gc'
        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    ELSE
        Open Browser    browser=ff      executable_path=${EXECDIR}${/}driver${/}geckodriver.exe
    END

    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    SeleniumLibrary.Set Screenshot Directory    path=${EXECDIR}${/}screenshots
    Go To    url=${URL}
    

End Browser
    Capture Page Screenshot

    Close Browser