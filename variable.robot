*** Settings ***
Documentation    To validate login form
Library    SeleniumLibrary
Test Teardown    Close Browser
*** Variables ***
${error_message_login}    css:.alert
*** Test Cases ***
validate successful login
    open the browser with the web url
    fill the login form
    wait until it checks and display error message
    verify error message is correct

*** Keywords ***
open the browser with the web url
    Open Browser    https://rahulshettyacademy.com/loginpagePractise/    chrome
    #Go To    https://rahulshettyacademy.com/
fill the login form
    Input Text    id:username    abc
    Input Password    id:password    txt
    Click Button    signInBtn
wait until it checks and display error message
    Wait Until Element Is Visible    ${error_message_login}

verify error message is correct
    ${result}=    Get Text    ${error_message_login}
     Should Be Equal As Strings    ${result}    Incorrect username/password.
     Element Text Should Be        ${error_message_login}   Incorrect username/password.
      
