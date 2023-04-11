*** Settings ***
Library  SeleniumLibrary
Variables    ../Variables/Locators/Locators.py
Resource    ../Resources/LoginPageKeyword.robot


*** Variables ***
${Browser}      chrome
${URL}       https://www.saucedemo.com
${Text}             Swag Labs



*** Test Cases ***
Landing Login Page Test Case
    Open Browser     ${URL}   ${Browser}

InCorrect Login Test Case
    element should contain      ${Header}     ${Text}
    Incorrect login attempt
    element should be visible       ${error}

Correct login Test case

    Login with user defined creds       standard_user       secret_sauce
    element should contain      ${appLogo}     ${Text}
    element should be visible    ${menuButton}
