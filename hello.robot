*** Settings ***
Resource          ./resources/keywords/mobile.robot
Resource          ./resources/variables.robot
Resource          ./env.robot

Suite Setup       Abrir Aplicativo
Suite Teardown    Close Application

Test Setup        Start Screen Recording
Test Teardown     Stop Screen Recording    filename=TEST_${TEST_TAGS[0]}

*** Test Cases ***
Caso de Teste 02: Logar no Youtube
    [Tags]    LOGAR_NO_YOUTUBE

    Dado que esteja logado no aplicativo
    E esteja na tela de explorar
    Quando der "10" swipes na tela
    E clicar em um vídeo
    Então o vídeo sera aberto

Caso de Teste 03: Usar método Swipe na tela
    [Tags]    SWIPE_NA_TELA
    
    Dado que esteja na tela de explorar
    Quando der "10" swipes na tela
    E clicar em um vídeo
    Então o vídeo sera aberto