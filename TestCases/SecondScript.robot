*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}      chrome
${URL}       https://www.saucedemo.com
${UsernameText}        Admin
${PasswordText}        admin123
${LoginButton}      xpath:(//input[@id='login-button'])[1]
${KeyName}          ENTER
${Username}         id:user-name
${Password}         id:password
${Header}           xpath://div[@class='login_logo']
${Text}             Swag Labs


*** Test Cases ***
Login Test Case
    Open Browser     ${URL}   ${Browser}
    element should contain      ${Header}     ${Text}
    Input Text          ${Username}      ${UsernameText}
    Input Text          ${Password}      ${PasswordText}
    Press Keys          ${LoginButton}      ${KeyName}





