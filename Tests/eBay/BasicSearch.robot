*** Settings ***
Documentation  Basic Search Funcionality
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify basis search functionality for eBay
    Open Browser  https://www.ebay.com  chrome
    Input Text  //*[@id="gh-ac"]  mobile
    Press Keys  //*[@id="gh-btn"]  [return]
    #Click Element  //*[@id="gh-btn"]
    Page Should Contain  results for mobile
    Close Browser

*** Keywords ***
