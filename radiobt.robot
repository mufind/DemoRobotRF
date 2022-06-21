*** Settings ***
Library         SeleniumLibrary
Test Setup      Open Browser        ${base_url}         ${base_type}
Test Teardown   Close Browser

*** Variables ***
${base_url}         https://demoqa.com/radio-button
${base_type}        gc

*** Test Cases ***
I Click radio button in impressive data
    Maximize Browser Window
    Click Element                   //label[@for="impressiveRadio"]
    Sleep                           2s
    Element Should Be Visible       //p[@class="mt-3"]
    Sleep                           2s
    Element Should Contain          //span[@class="text-success"]           Impressive
    Sleep                           5s


I Click radio button in yes data
    Maximize Browser Window
    Click Element                   //label[@for="yesRadio"]
    Sleep                           2s
    Element Should Be Visible       //p[@class="mt-3"]
    Sleep                           2s
    Element Should Contain          //span[@class="text-success"]           Yes
    Sleep                           5s

                