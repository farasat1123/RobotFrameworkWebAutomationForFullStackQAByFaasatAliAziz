*** Settings ***
Library         SeleniumLibrary
Variables       ../Variables/Locators/Locators.py

*** Variables ***
${UsernameText}        Admin
${PasswordText}        admin123
${KeyName}          ENTER


*** Keywords ***
Incorrect login Attempt
    Input Text          ${Username}      ${UsernameText}
    Input Text          ${Password}      ${PasswordText}
    Press Keys          ${LoginButton}      ${KeyName}