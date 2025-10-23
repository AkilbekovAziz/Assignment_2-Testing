*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://www.demoblaze.com/
${BROWSER}  chrome
${USERNAME}  testuser123
${PASSWORD}  testpass123

*** Keywords ***
Open DemoBlaze
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Close DemoBlaze
    Close Browser
