*** Settings ***
Documentation     Simple example using Selenium2Library.
Library           Selenium2Library
Library           OperatingSystem
Suite Setup  Go to homepage


*** Variables ***
${HOMEPAGE}      https://www.hotline.ua/
${BROWSER}       Chrome

*** Test Cases ***
Hotline search and find Iphone 7
   Hotline and search results  Iphone 7  


*** Keywords ***
Hotline and search results
    [Arguments]  ${searchkey}

    Input Text  id=searchbox  ${searchkey}
    Press Key    name=q    \\13
    Wait Until Page Contains  ${searchkey}
    Click Link  xpath=//*[@id="page-search"]/div[2]/div/div[1]/div[3]/div/ul/li[1]/div[2]/p/a

Go to homepage
	Open Browser   ${HOMEPAGE}   ${BROWSER}
