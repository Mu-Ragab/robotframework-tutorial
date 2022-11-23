*** Settings ***

*** Variables ***
${DEMO_VARIABLE}  This is a GLOBAL variable

*** Test Cases ***
Test case 1
    ${demo_variable} =  Set Variable  This is a TESTCASE variable
    Log  ${DEMO_VARIABLE}

Test case 2
    Log  ${DEMO_VARIABLE}

Test case 3
    This is demo keyword

*** Keywords ***
This is demo keyword
    [Arguments]  ${demo_variable}=This is a KEYWORD variable
    Log  ${DEMO_VARIABLE}