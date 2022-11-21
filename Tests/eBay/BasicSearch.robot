*** Settings ***
Documentation  Basic Search Funcionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/eBay_UserDefinedKeywords.robot

*** Variables ***

*** Test Cases ***
Verify basis search functionality for eBay
    Open URL
    Verify Search Result
    Close the browser