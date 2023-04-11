*** Settings ***
Library     SeleniumLibrary
Library     AllureReportingLibrary
Library     RPA.Browser
Library     JSONLibrary
Library     OperatingSystem
Variables    ../Variables/Locators/Locators.py
Variables    ../Variables/Locators/Locators.JSON
Resource    ../Resources/LoginPageKeyword.robot


*** Variables ***
${Browser}      chrome
${URL}          https://www.saucedemo.com
${Text}         Swag Labs
${Header}       xpath://h4[text()='Accepted usernames are:']
${appLogo}      css:div[class='app_logo']

*** Test Cases ***
#Clear previous screenshots
  #  Remove File    ${EXECDIR}*/*.png

Landing Login Page Test Case
    [Documentation]   This test case opens the landing login page
    [Tags]        regression
    Set Suite Documentation    Robot Framework Web FullStack QA Program
    Remove Directory    allure-report
    Open Browser     ${URL}   ${Browser}
    Capture Page Screenshot
    Close Browser

InCorrect Login Test Case
    [Documentation]   This test case verifies that an error message is displayed for an incorrect login attempt
    [Tags]      regression
    Open Browser     ${URL}   ${Browser}
    Incorrect login attempt
    element should be visible       ${error}
    Capture Page Screenshot
    Close Browser

Correct login Test case
    [Documentation]   This test case logs in with valid credentials and verifies that the app logo and menu button are visible
    [Tags]      regression
    Open Browser     ${URL}   ${Browser}
    Login with user defined creds       standard_user       secret_sauce
    element should contain      ${appLogo}     ${Text}
    element should be visible    ${menuButton}
    Capture Page Screenshot
    Close Browser

