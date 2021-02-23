*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.roblox.com/

*** Test Cases ***
Sign up  registration

*** Keywords ***
registration  open browser  ${url}  ${browser}
              sleep  5
              click element  id:CookieLawAccept
              select from list by label  birthdayMonth  November
              select from list by value  birthdayDay  21
              select from list by value  birthdayYear  1996
              input text  id:signup-username  mynameisused554242
              input text  id:signup-password  mypasswordis22
              sleep  2
              click element  id:MaleButton
              sleep  2
              click element  id:signup-button
