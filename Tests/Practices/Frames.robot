*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
This is a test case for practicing frames keywords
    Open Browser  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert  chrome
    Maximize Browser Window

    Select Frame  id:iframeResult
    Current Frame Should Contain  JavaScript Alert
    Current Frame Should Not Contain  JavaScript Confirm Box Two

    Unselect Frame

    Frame Should Contain  id:iframeResult  JavaScript Alert

    Close Browser