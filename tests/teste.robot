*** Settings ***
Library    FakerLibrary

*** Test Cases ***
Gerar Nome Falso
    ${nome}    Fake Name
    Log    ${nome}