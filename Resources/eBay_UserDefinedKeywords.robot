*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Result
    Input Text  //*[@id="gh-ac"]  mobile
    Press Keys  //*[@id="gh-btn"]  [return]
    Page Should Contain  results for mobile