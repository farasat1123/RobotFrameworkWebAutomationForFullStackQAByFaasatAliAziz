*** Settings ***
Library         SeleniumLibrary
Library         OperatingSystem
Variables    ../Variables/Locators/Locators.JSON
Variables    ../Variables/Locators/Locators.py
Library     JSONLibrary



*** Keywords ***
#Load Location JSON File
 #   ${file}    load location json file       ../Variables/Locators/Locators.JSON
  #  ${locators}=         Evaluate    json.loads('''${file}''')
  #  ${Username}=         get variable value    ${locators}    Username
  #  ${Password}=         get value    ${locators}    Password
  #  ${LoginButton}=      get value    ${locators}    LoginButton

Incorrect login attempt
    [Arguments]          ${UsernameText}     ${PasswordText}     ${KeyName}
    Input Text           ${Username}         ${UsernameText}
    Input Text           ${Password}         ${PasswordText}
    Press Keys           ${LoginButton}      ${KeyName}

Login with user defined creds
    [Arguments]         ${uname}     ${pwd}     ${KeyName}
    Input Text          ${Username}      ${uname}
    Input Text          ${Password}      ${pwd}
    Press Keys          ${LoginButton}      ${KeyName}

#Load Location JSON File
 #   ${file}     Load json from file     ../Variables/Locators/Locators.JSON
  #  ${json_firstname}   Get value from json   ${file}   $.firstname
   # ${json_lastname}    Get value from json     ${file}     $.lastname