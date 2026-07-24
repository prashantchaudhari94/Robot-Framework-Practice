*** Settings ***
Documentation    resource file with reusable keywords and variables
Library    SeleniumLibrary

*** Variables ***
${username}     abc
${invalid_password}    12345
*** Keywords ***
open the browser with the web url
    Open Browser    https://rahulshettyacademy.com/loginpagePractise/    chrome
    #Go To    https://rahulshettyacademy.com/
Close Browser session
    Close Browser