*** Settings ***
Documentation    To validate login form
Library    SeleniumLibrary
Test Setup    open the browser with the web url
Test Teardown    Close Browser session
Resource    resource.robot

*** Variables ***
${error_message_login}    css:.alert
${shop_page_load}    css:.btn

*** Test Cases ***
validate successful login

    fill the login form    ${username}    ${invalid_password}
    Wait Until Element Is located in the page    ${error_message_login}
    verify error message is correct
validate card display in the shopping page    
    fill the login form    ${username}    ${valid_password}
    Wait Until Element Is located in the page    ${shop_page_load}
    
*** Keywords ***
fill the login form
    [Arguments]    ${username}    ${password}
    Input Text    id:username      ${username}
    Input Password    id:password  ${invalid_password}
    Click Button    signInBtn
Wait Until Element Is located in the page
    [Arguments]    ${element}
    Wait Until Element Is Visible    ${element}
verify error message is correct
    ${result}=    Get Text    ${error_message_login}
     Should Be Equal As Strings    ${result}    Incorrect username/password.
     Element Text Should Be        ${error_message_login}   Incorrect username/password.
