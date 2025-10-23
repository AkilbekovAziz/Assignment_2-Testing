*** Settings ***
Resource    ../resources/common_keywords.robot

*** Test Cases ***
Sign Up New User
    Open DemoBlaze
    Click Element    id=signin2
    Wait Until Element Is Visible    id=sign-username
    Input Text    id=sign-username    ${USERNAME}
    Input Text    id=sign-password    ${PASSWORD}
    Click Button    xpath=//button[text()='Sign up']
    Sleep    2s
    Handle Alert
    Close DemoBlaze
