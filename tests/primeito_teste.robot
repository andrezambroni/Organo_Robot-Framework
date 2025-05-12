*** Settings ***
Library           SeleniumLibrary
Library           webdriver_manager

*** Test Cases ***

Abrir o navegador e acessar o site do organo
    Open Browser    http://localhost:3000/    Chrome
    Maximize Browser Window

Preencher os campos do formulário
    Input Text   id:form-nome   Andre
    Input Text   id:form-cargo  Dev
    Input Text   id:form-imagem     https://picsum.photos/200/300
    Click Element     class:lista-suspensa 
    Click Element     //option[contains(., 'Programação')]
    Sleep     10s
    Click Element     id:form-botao
    Element Should Be Visible   class:colaborador 
    Sleep     5s
