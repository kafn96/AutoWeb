*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.roblox.com/

*** Test Cases ***

input text   input


*** Keywords ***
input  open browser  ${url}  ${browser}
             click link  xpath://*[@id="main-login-button"]
             element should be visible  id:login-username
             element should be visible  id:login-password
             element should be enabled  id:login-username
             element should be enabled  id:login-password
             input text  id:login-username  kafn96
             input text  id:login-password  apollo66
             sleep  5
             clear element text  id:login-username
             clear element text  id:login-password
             sleep  3
             close window