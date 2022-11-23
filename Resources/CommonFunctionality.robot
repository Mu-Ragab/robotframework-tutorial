*** Settings ***
Library  SeleniumLibrary


*** Variables ***
# using dictionary variable if you have multiple environments
${env}  prod
&{url}  dev=http://dev.ebay.com  qa=http://qa.ebay.com  prod=https://www.ebay.com

*** Keywords ***
Open URL
    Open Browser  ${url.${env}}  chrome
    Maximize Browser Window

Close the browser
    Close Browser