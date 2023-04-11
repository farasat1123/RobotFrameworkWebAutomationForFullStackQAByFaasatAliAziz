*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}      chrome
${URL}       https://www.saucedemo.com
${UsernameText}        Admin
${PasswordText}        admin123
${KeyName}          ENTER
${Text}             Swag Labs


${LoginButton}      xpath:(//input[@id='login-button'])[1]
${Username}         id:user-name
${Password}         id:password
${Header}           xpath://div[@class='login_logo']


*** Keywords ***
search for the login button
    Input Text          ${Username}      ${UsernameText}
    Input Text          ${Password}      ${PasswordText}
    Press Keys          ${LoginButton}      ${KeyName}


*** Test Cases ***
Landing Login Page Test Case
    Open Browser     ${URL}   ${Browser}

Login Test Case
    element should contain      ${Header}     ${Text}
    Search for the login button
    Close Browser




