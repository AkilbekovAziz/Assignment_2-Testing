*** Settings ***
Resource    ../resources/common_keywords.robot

*** Test Cases ***
Buy Product
    Open DemoBlaze
    Click Element    id=login2
    Wait Until Element Is Visible    id=loginusername
    Input Text    id=loginusername    ${USERNAME}
    Input Text    id=loginpassword    ${PASSWORD}
    Click Button    xpath=//button[text()='Log in']
    Sleep    3s
    Click Link    Laptops
    Sleep    1s
    Click Link    Sony vaio i5
    Sleep    1s
    Click Button    xpath=//a[text()='Add to cart']
    Sleep    2s
    Handle Alert
    Click Link    Cart
    Sleep    1s
    Click Button    xpath=//button[text()='Place Order']
    Input Text    id=name    ${USERNAME}
    Input Text    id=country    Kazakhstan
    Input Text    id=city    Almaty
    Input Text    id=card    1234567890123456
    Input Text    id=month    12
    Input Text    id=year     2025
    Click Button    xpath=//button[text()='Purchase']
    Page Should Contain    Thank you for your purchase!
    Click Button    xpath=//button[text()='OK']
    Close DemoBlaze
