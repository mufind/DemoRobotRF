*** Settings ***
Library         SeleniumLibrary
Test Setup      Open Browser        ${base_url}         ${base_type}
Test Teardown   Close Browser

*** Variables ***
${base_url}         http://uitestingplayground.com/textinput
${base_type}        gc

*** Test Cases ***
I am typing my name in the field    
    Maximize Browser Window
    Input Text              //input[@class="form-control"]          Muhamad Fadhil Indirwan
    Sleep                   2s
    Click Element           //button[@class="btn btn-primary"]      
    Sleep                   5s
    Element Should Contain  //button[@class="btn btn-primary"]      Muhamad Fadhil Indirwan                          