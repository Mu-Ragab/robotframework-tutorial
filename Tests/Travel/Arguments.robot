*** Settings ***

*** Variables ***

*** Test Cases ***
Test arguments 1
    Argument demo keyword  rcv  academy

Test arguments 2
    Argument demo keyword  test  testing

*** Keywords ***
Argument demo keyword
    [Arguments]  ${arg1}  ${arg2}
    Log  ${arg1}
    Log  ${arg2}