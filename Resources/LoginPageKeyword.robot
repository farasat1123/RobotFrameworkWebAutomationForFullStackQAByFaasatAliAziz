*** Settings ***
Library         SeleniumLibrary
Library         OperatingSystem
Library         JSONLibrary
Variables    ../Variables/Locators/Locators.py
Variables    ../Variables/Locators/Locators.JSON

*** Variables ***
${UsernameText}        Admin
${PasswordText}        admin123
${KeyName}          ENTER
${JsonFile}         ../Variables/Locators/Locators.JSON

*** Keywords ***
Incorrect login attempt
    Input Text          ${Username}      ${UsernameText}
    Input Text          ${Password}      ${PasswordText}
    Press Keys          ${LoginButton}      ${KeyName}


Login with user defined creds
    [Arguments]         ${uname}     ${pwd}
    Input Text          ${Username}      ${uname}
    Input Text          ${Password}      ${pwd}
    Press Keys          ${LoginButton}      ${KeyName}


#Load Location JSON File
 #   ${json_file_path}    GET FILE    .${JsonFile}
   # Log    ${json_file_path}

#Load Location JSON File
 #   ${file}     Load json from file     ../Variables/Locators/Locators.JSON
  #  ${json_firstname}   Get value from json   ${file}   $.firstname
   # ${json_lastname}    Get value from json     ${file}     $.lastname