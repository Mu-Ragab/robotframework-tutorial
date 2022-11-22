*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_text}  robot

*** Keywords ***
Input Search Text and Click Search
    Input Text  xpath://*[@id="gh-ac"]  ${search_text}
    Press Keys  xpath://*[@id="gh-btn"]  [Return]

Click on Advanced Search Link
    Click Element  //*[@id="gh-as-a"]
