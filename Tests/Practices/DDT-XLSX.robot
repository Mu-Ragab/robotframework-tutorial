*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/common.robot
Library  DataDriver  ../../TestData/TestData.xlsx  shet_name=Sheet1

Suite Setup  common.Start TestCase
Suite Teardown  common.Finish TestCase

Test Template  Invalid Login Scenarios

*** Test Cases ***
Verify Login Fails with Invalid Creds  ${username}  ${password}  ${error_msg}

*** Keywords ***
Invalid Login Scenarios
    [Arguments]  ${username}  ${password}  ${error_msg}
    Input Text  ${username_textbox}  ${username}
    Input Text  ${password_textbox}  ${password}
    Click Button  ${login_button}
    Sleep  2s
    Element Should Contain  ${text_error}  ${error_msg}