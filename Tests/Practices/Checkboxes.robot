*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
This is a test case for practicing checkboxes keywords
    Open Browser  https://www.sugarcrm.com/au/request-demo/  chrome
    Maximize Browser Window
    Sleep  3s

    Click Element  xpath://*[@id="CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll"]

    Scroll Element Into View  xpath://*[@id="field1"]/div/input
    Page Should Contain Checkbox  xpath://*[@id="doi0"]
    Page Should Not Contain Checkbox  xpath://*[@id="doi000"]
    Select Checkbox  xpath://*[@id="doi0"]
    Checkbox Should Be Selected  xpath://*[@id="doi0"]
    Sleep  4s
    Unselect Checkbox  xpath://*[@id="doi0"]
    Checkbox Should Not Be Selected  xpath://*[@id="doi0"]
    Close Browser