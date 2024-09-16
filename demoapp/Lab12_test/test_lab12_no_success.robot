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
Open Event Registration Page:
    Open Browser    ${REGISTER URL}    ${BROWSER}
    Maximize Browser Window
    # Sleep    ${DELAY}
Empty First Name:
    [Documentation]    Test case for successful event registration.
    [Tags]    registration
    Open Browser    ${REGISTER URL}    ${BROWSER}
    Maximize Browser Window
    # Sleep    ${DELAY}

    # Input Text    id=firstname     Somsri
    Input Text    id=lastname      Sodsai
    Input Text    id=organization   CS KKU
    Input Text    id=email          somsri@kkumail.com
    Input Text    id=phone          081-001-1234

    Click Button    id=registerButton
    # Sleep    ${DELAY}
    
    # Location Should Be    ${SUCCESS URL}
    # Close Browser

# Open Event Registration Page:
#     Open Browser    ${REGISTER URL}    ${BROWSER}
#     Maximize Browser Window
#     # Sleep    ${DELAY}
Empty Last Name:
    # Open Browser    ${REGISTER URL}    ${BROWSER}
    # Maximize Browser Window
    # # Sleep    ${DELAY}

    # [Documentation]    Test case for successful event registration.
    # [Tags]    registration
    # Open Browser    ${REGISTER URL}    ${BROWSER}
    # Maximize Browser Window
    # Sleep    ${DELAY}

    Input Text    id=firstname     Somsri
    # Input Text    id=lastname      Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=email          somsri@kkumail.com
    Input Text    id=phone          081-001-1234

    Click Button    id=registerButton
    
    Location Should Be    ${SUCCESS URL}
    Close Browser

Open Event Registration Page:
    Open Browser    ${REGISTER URL}    ${BROWSER}
    Maximize Browser Window
    # Sleep    ${DELAY}
Empty First Name and Last Name:

    # Input Text    id=firstname     Somsri
    # # Input Text    id=lastname      Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=email          somsri@kkumail.com
    Input Text    id=phone          081-001-1234

    Click Button    id=registerButton
    
    # Location Should Be    ${SUCCESS URL}
    # Close Browser
Empty Email:

    Input Text    id=firstname     Somsri
    Input Text    id=lastname      Sodsai
    Input Text    id=organization    CS KKU
    # Input Text    id=email          somsri@kkumail.com
    Input Text    id=phone          081-001-1234

Open Event Registration Page:
    Open Browser    ${REGISTER URL}    ${BROWSER}
    Maximize Browser Window
    # Sleep    ${DELAY}
Empty Phone Number:

    Input Text    id=firstname     Somsri
    Input Text    id=lastname      Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=email          somsri@kkumail.com
    # Input Text    id=phone          081-001-1234

    Click Button    id=registerButton
    
    # Location Should Be    ${SUCCESS URL}
    # Close Browser

Open Event Registration Page:
    Open Browser    ${REGISTER URL}    ${BROWSER}
    Maximize Browser Window
    # Sleep    ${DELAY}
Invalid Phone Number:

    Input Text    id=firstname     Somsri
    Input Text    id=lastname      Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=email          somsri@kkumail.com
    Input Text    id=phone          1234

    Click Button    id=registerButton
    
    # Location Should Be    ${SUCCESS URL}
    # Close Browser

*** Keywords ***

