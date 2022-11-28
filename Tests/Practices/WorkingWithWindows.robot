*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
This is a test case for practicing window keywords
    Open Browser  https://salesforce.com  chrome  alias=ChromeRCV
    Maximize Browser Window
    Wait Until Element Is Visible  xpath:/html/body/div[1]/hgf-c360nav//header/div/div[1]/nav[2]/div/hgf-button
    Click Element  xpath:/html/body/div[1]/hgf-c360nav//header/div/div[1]/nav[2]/div/hgf-button

    @{WindowHandles}=  Get Window Hnadles
    Sleep  3s
    @{WindowIdentifier}=  Get Window Identifiers
    Sleep  3s
    @{WindowNames}=  Get Window Names
    Sleep  3s
    @{WindowTitles}=  Get Window Titles
    Sleep  3s

    Set Window Position  100  200
    ${x} ${y}=  Get Window Position
    Log  ${x}
    Log  ${y}
    Sleep  3s

    Set Window Size  800  600
    ${width} ${height}=  Get Window Size
    Log  ${width}
    Log  ${height}
    Sleep  3s

    Switch Window  @{WindowHandles}[1]
    Log  @{WindowHandles}[1]
    Sleep  3s

    Close Window
    Sleep  3s

    Switch Window  @{WindowHandles}[0]
    Close Window