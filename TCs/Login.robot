*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url1}  https://www.roblox.com/
*** Test Cases ***
ksdsd  open browser  ${url1}  ${browser}
login application  Login Application

*** Keywords ***
Login Application
                   sleep  10
                   click link  xpath://*[@id="main-login-button"]
                   input text  id:login-username  KAFN96
                   input text  id:login-password  apollo96
                   click element  id:login-button
                   sleep  5
                   #close browser
