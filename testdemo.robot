*** Settings ***
Documentation    To validate login form
Library    SeleniumLibrary
Test Setup    open the browser with the web url
Test Teardown    Close Browser session
Resource    resource.robot

*** Variables ***
${error_message_login}    css:.alert
*** Test Cases ***
validate successful login

    fill the login form
    wait until it checks and display error message
    verify error message is correct

*** Keywords ***

fill the login form
    Input Text    id:username      ${username}
    Input Password    id:password  ${invalid_password}
    Click Button    signInBtn
wait until it checks and display error message
    Wait Until Element Is Visible    ${error_message_login}

verify error message is correct
    ${result}=    Get Text    ${error_message_login}
     Should Be Equal As Strings    ${result}    Incorrect username/password.
     Element Text Should Be        ${error_message_login}   Incorrect username/password.

