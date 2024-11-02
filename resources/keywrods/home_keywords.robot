*** Settings ***
Resource    ../pages/home_page.robot
Resource    ../variables/variable.robot
Resource     home_keywords.robot
Library    SeleniumLibrary

*** Keywords ***
Open Home Page
    Open Browser              ${BASE_URL}  browser=${BROWSER} 
    Maximize Browser Window

Adjust the slider and ensure that monthly price updates accordingly
    [Arguments]    ${value}    ${price}     ${btcPrice}    ${pageview}
    Open Home Page
    ${slider}=    Get WebElement    xpath=${HOME_SLIDDER}
    # Adjust the offset values to control how far you drag the slider
    Drag And Drop By Offset    ${slider}    ${value}    0
    ${rounded_number}=  Evaluate  round(${btcPrice}, 6)
    Wait Until Page Contains    ${price}
    Wait Until Page Contains    ${pageview}
    Wait Until Page Contains    ${rounded_number}
    [Teardown]    Close Browser

Adjust the slider and ensure that yearly price updates accordingly
    [Arguments]    ${value}    ${price}     ${btcPrice}    ${pageview}
    Open Home Page
    ${slider}=    Get WebElement    xpath=${HOME_SLIDDER}
    # Adjust the offset values to control how far you drag the slider
    Click Element    ${HOME_CHECKBOX}
    Drag And Drop By Offset    ${slider}    ${value}    0
    ${rounded_number}=  Evaluate  round(${btcPrice}, 6)
    Wait Until Page Contains    ${price}
    Wait Until Page Contains    ${pageview}
    Wait Until Page Contains    ${rounded_number}
    [Teardown]    Close Browser