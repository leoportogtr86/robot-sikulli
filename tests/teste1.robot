*** Settings ***
Library    SikuliLibrary


*** Test Cases ***
Teste 01
    Start Session


*** Keywords ***
Start Session
    Load Elements
    Click    logo.png    
    Click    user.png
    Input Text    input.png    e ai gata
    Click    send.png 

Load Elements
    Add Image Path    ${EXECDIR}\\resources\\elements    