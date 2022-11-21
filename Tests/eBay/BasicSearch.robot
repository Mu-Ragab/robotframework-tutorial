*** Settings ***
Documentation  Basic Search Funcionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/eBay_UserDefinedKeywords.robot

Test Setup  CommonFunctionality.Open URL
Test Teardown  CommonFunctionality.Close the browser

*** Variables ***

*** Test Cases ***
Verify basis search functionality for eBay
    eBay_UserDefinedKeywords.Verify Search Result
