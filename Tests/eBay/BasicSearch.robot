*** Settings ***
Documentation  Basic Search Funcionality
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify basis search functionality for eBay
    Open URL
    Verify Search Result
    Close the browser

*** Keywords ***
Open URL
    Open Browser  https://www.ebay.com  chrome

Verify Search Result
    Input Text  //*[@id="gh-ac"]  mobile
    Press Keys  //*[@id="gh-btn"]  [return]
    Page Should Contain  results for mobile

Close the browser
    Close Browser