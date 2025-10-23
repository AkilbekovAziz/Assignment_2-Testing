*** Settings ***
Resource    ../resources/common_keywords.robot

*** Test Cases ***
Log In Existing User
    Open DemoBlaze
    Click Element    id=login2
    Wait Until Element Is Visible    id=loginusername
    Input Text    id=loginusername    ${USERNAME}
    Input Text    id=loginpassword    ${PASSWORD}
    Click Button    xpath=//button[text()='Log in']
    Sleep    3s
    Page Should Contain    Welcome ${USERNAME}
    Close DemoBlaze
