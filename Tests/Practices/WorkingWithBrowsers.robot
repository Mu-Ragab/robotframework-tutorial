*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
This is a test case for practicing browser operation keywords
    Open Browser  https:www.google.com  chrome  alias=ChromeRCV
    Maximize Browser Window
    Open Browser  about:blank  Firefox  alias=RCVFF
    @{browser_id}  Get Browser Ids
    Log  ${browser_id}
    &{alias}  Get Browser Aliases
    Log  ${alias}
    Switch Browser  1
    Input Text  xpath://input[@class='gLFyf']  test text
    Sleep  4s
    Switch Browser  ${alias.RCVFF}
    Go To  http://salesforce.com
    Close All Browsers
