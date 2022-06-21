*** Settings ***
Library         SeleniumLibrary

*** Test Cases ***
I am Access Google Page
    Open Browser        https://www.google.com/         gc
    Maximize Browser Window
    Sleep               5s
    Close Browser