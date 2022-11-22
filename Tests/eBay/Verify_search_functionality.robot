*** Settings ***
Documentation  Basic Search Funcionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/SearchResultsPage.robot

Test Setup  CommonFunctionality.Open URL
Test Teardown  CommonFunctionality.Close the browser

*** Variables ***

*** Test Cases ***
Verify basic search functionality
    HeaderPage.Input Search Text and Click Search
    SearchResultsPage.Verify Search Results

Verify advanced search functionality
    HeaderPage.Click on Advanced Search Link
