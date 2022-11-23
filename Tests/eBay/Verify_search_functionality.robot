*** Settings ***
Documentation  Basic Search Funcionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/SearchResultsPage.robot

Test Setup  CommonFunctionality.Open URL
Test Teardown  CommonFunctionality.Close the browser

*** Variables ***

*** Test Cases ***
Verify basic search functionality1
    HeaderPage.Input Search Text and Click Search  robot
    SearchResultsPage.Verify Search Results  robot

Verify basic search functionality2
    HeaderPage.Input Search Text and Click Search  books
    SearchResultsPage.Verify Search Results  books

Verify basic search functionality3
    HeaderPage.Input Search Text and Click Search  travel
    SearchResultsPage.Verify Search Results  travel

Verify advanced search functionality
    HeaderPage.Click on Advanced Search Link
