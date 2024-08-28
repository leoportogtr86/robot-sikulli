*** Settings ***
Library    SikuliLibrary


*** Test Cases ***
Testa a Edição na Tela do Notepad
    Add Image Path    ${EXECDIR}\\resources\\elements
    Click    notepad_icon.png
    Input Text    text_area.png    Este eh um teste automatizado criado com robot e sikuli
    Exists    text_typed.png