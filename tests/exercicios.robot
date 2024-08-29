*** Settings ***
Library    SikuliLibrary
Library    ../venv/Lib/site-packages/robot/libraries/String.py

# 1. **Abrindo um Aplicativo:**
#    - Crie um script que abra o Bloco de Notas (Notepad) usando o comando `Open Application`.

# 2. **Captura e Clique em Imagem:**
#    - Capture a imagem de um botão no Bloco de Notas e crie um script para clicar nesse botão.

# 3. **Digitando Texto:**
#    - Automatize a digitação de um texto no Bloco de Notas usando o comando `Type`.

# 4. **Salvar um Arquivo:**
#    - Crie um script que digite um texto no Bloco de Notas e salve o arquivo com um nome específico.



*** Test Cases ***
Abrindo o Bloco de Notas
    Load
    Abrir Bloco de Notas
    Wait Until Screen Contain    config_icon.png    5
    Click    config_icon.png
    Wait Until Screen Contain    btn_tema_aplicativo.png    5
    Click    btn_tema_aplicativo.png
Salvar Arquivo com Dados Inseridos no Bloco de Notas
    ${texto}    Generate Random String    10
    Load
    Abrir Bloco de Notas
    Click    btn_arquivo.png
    Click    menu_nova_guia.png
    Input Text    text_area.png    Texto - ${texto}    
    Click    btn_arquivo.png
    Click    menu_item_salvar.png
    Press Special Key    DELETE
    Click    btn_salvar.png
    Click    icon_close.png


*** Keywords ***
Load
    Add Image Path    ${EXECDIR}\\resources\\elements

Abrir Bloco de Notas
    Wait Until Screen Contain    notepad_icon.png    5
    Click    notepad_icon.png 
            