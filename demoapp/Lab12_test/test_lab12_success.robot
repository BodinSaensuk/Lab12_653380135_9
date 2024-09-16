*** Settings ***
Documentation     This file contains test cases for registering an event successfully.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         localhost:7272
${BROWSER}        Firefox
${DELAY}          5s
${REGISTER URL}   http://${SERVER}/Lab12/Registration.html
${SUCCESS URL}    http://${SERVER}/Lab12/Success.html

*** Test Cases ***
Open Event Registration Page
    Open Browser    ${REGISTER URL}    ${BROWSER}
    Maximize Browser Window
    # Sleep    ${DELAY}
Register Success:
    [Documentation]    Test case for successful event registration.
    [Tags]    registration
    # Open Browser    ${REGISTER URL}    ${BROWSER}
    # Maximize Browser Window
    # Sleep    ${DELAY}

    Input Text    id=firstname     Somsri
    Input Text    id=lastname      Sodsai
    Input Text    id=organization   CS KKU
    Input Text    id=email          somsri@kkumail.com
    Input Text    id=phone          081-001-1234

    Click Button    id=registerButton
    # Sleep    ${DELAY}
    
    # Location Should Be    ${SUCCESS URL}
    Close Browser

Open Event Registration Page:
    Open Browser    ${REGISTER URL}    ${BROWSER}
    Maximize Browser Window
    # Sleep    ${DELAY}
Register Success No Organization Info:
    [Documentation]    Test case for successful event registration.
    [Tags]    registration
    # Open Browser    ${REGISTER URL}    ${BROWSER}
    # Maximize Browser Window
    # Sleep    ${DELAY}

    Input Text    id=firstname     Somsri
    Input Text    id=lastname      Sodsai
    # Input Text    id=organization   CS KKU
    Input Text    id=email          somsri@kkumail.com
    Input Text    id=phone          081-001-1234

    Click Button    id=registerButton
    # Sleep    ${DELAY}
    
    # Location Should Be    ${SUCCESS URL}
    Close Browser


*** Keywords ***

