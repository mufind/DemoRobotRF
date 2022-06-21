*** Settings ***
Library         SeleniumLibrary
#Test Setup      Open Browser        ${base_url}         ${base_type}
#Test Teardown   Close Browser
Suite Setup      Open Browser        ${base_url}         ${base_type}
Suite Teardown   Close Browser

*** Variables ***
${base_url}         https://the-internet.herokuapp.com/dropdown
${base_type}        gc

*** Test Cases ***
I selecting "option 2" in dropdown list "menu"
    Maximize Browser Window               
    Element Should Be Visible       //select[@id="dropdown"]
    Select From List By Index       //select[@id="dropdown"]        2
    List Selection Should Be        //select[@id="dropdown"]        Option 2 
  
I selecting "option 1" in dropdown list "menu"
    Maximize Browser Window               
    Element Should Be Visible       //select[@id="dropdown"]
    Select From List By Index       //select[@id="dropdown"]        1
    List Selection Should Be        //select[@id="dropdown"]        Option 1 


                