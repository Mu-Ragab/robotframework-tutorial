*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Input Search Text and Click Search
    Input Text  xpath://*[@id="gh-ac"]  mobile
    Press Keys  xpath://*[@id="gh-btn"]  [Return]

Click on Advanced Search Link
    Click Element  //*[@id="gh-as-a"]
