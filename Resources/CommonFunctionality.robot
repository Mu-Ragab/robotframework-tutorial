*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open URL
    Open Browser  https://www.ebay.com  chrome

Close the browser
    Close Browser