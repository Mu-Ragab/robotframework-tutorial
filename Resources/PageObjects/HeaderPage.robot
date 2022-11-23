*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${search_text}  robot
#@{search_text}  books  travel  robot  gifts
&{search_text}  abc=books  bcd=travel

*** Keywords ***
Input Search Text and Click Search
    Input Text  xpath://*[@id="gh-ac"]  ${search_text.abc}
    Press Keys  xpath://*[@id="gh-btn"]  [Return]

Click on Advanced Search Link
    Click Element  //*[@id="gh-as-a"]
