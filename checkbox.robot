*** Settings ***
Library         SeleniumLibrary
Test Setup      Open Browser        ${base_url}         ${base_type}
Test Teardown   Close Browser

*** Variables ***
${base_url}         https://demoqa.com/checkbox
${base_type}        gc

*** Test Cases ***
I Click "notes" in checkbox
    Maximize Browser Window
    Click Element   (//button[@aria-label="Toggle"])[1]
    Sleep           2s
    Click Element   (//button[@aria-label="Toggle"])[2]
    Sleep           2s
    Click Element   //label[@for="tree-node-notes"]
    Sleep           2s
    Element Should Be Visible   //div[@id="result"]
    Element Should Contain      //span[@class="text-success"]       notes