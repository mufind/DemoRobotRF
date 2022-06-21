*** Settings ***
Library         SeleniumLibrary
Test Setup      Open Browser        ${base_url}         ${base_type}
Test Teardown   Close Browser

*** Variables ***
${base_url}         https://www.dota2.com/home
${base_type}        gc

*** Test Cases ***
I am Access Google Page    
    Maximize Browser Window
    Sleep               5s
    