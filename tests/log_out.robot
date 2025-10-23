*** Settings ***
Resource    ../resources/common_keywords.robot

*** Test Cases ***
Log Out User
    Open DemoBlaze
    Click Element    id=login2
    Wait Until Element Is Visible    id=loginusername
    Input Text    id=loginusername    ${USERNAME}
    Input Text    id=loginpassword    ${PASSWORD}
    Click Button    xpath=//button[text()='Log in']
    Sleep    3s
    Click Element    id=logout2
    Sleep    2s
    Page Should Contain    Log in
    Close DemoBlaze
