*** Settings ***
Library  AppiumLibrary
Resource  ../pages/elementos.robot

*** Keywords ***
Abrir Aplicativo
    Open Application    
    ...  remote_url=http://localhost:4723/wd/hub
    ...  platformName=Android
    ...  deviceName=${DEVICE}
    ...  appPackage=${APP_PACKAGE}
    ...  appActivity=${APP_ACTIVITY}
    ...  autoGrantPermissions=true

    Set Appium Timeout   ${TIMEOUT}

    ${status}  Run Keyword And Return Status    Wait Until Element Is Visible    ${banner}  10
    IF  ${status}
        Click Element    ${banner}
    END

    Wait Until Element Is Visible    ${icon_login} 

Dado que esteja logado no aplicativo
    Click Element    ${icon_login}

    Wait Until Element Is Visible    ${btn_login}
    Click Element    ${btn_login}

    Wait Until Element Is Visible    ${btn_add_conta}
    Click Element  ${btn_add_conta}

    Wait Until Element Is Visible    ${input_email}
    Sleep  2
    Input Text    ${input_email}     %{USERNAME}
    Hide Keyboard

    Wait Until Element Is Visible    ${btn_next}
    Click Element  ${btn_next}

    Wait Until Element Is Visible    ${input_password}
    Sleep  2
    Input Text    ${input_password}  %{PASSWORD}
    Hide Keyboard

    Wait Until Element Is Visible    ${btn_next}
    Click Element  ${btn_next}

    Wait Until Page Does Not Contain Element  ${btn_next}
    Repeat Keyword  2  Swipe  625  1700  625  106

    Wait Until Element Is Visible    ${btn_aceitar}
    Click Element  ${btn_aceitar}

    Wait Until Element Is Visible    ${check_drive}
    Click Element  ${check_drive}
    Swipe  625  1500  625  106

    Wait Until Element Is Visible    ${btn_aceitar_2}
    Click Element  ${btn_aceitar_2}

    ${status}  Run Keyword And Return Status    Wait Until Element Is Visible    ${banner}  10
    IF  ${status}
        Click Element    ${banner}
    END

    Wait Until Element Is Visible    ${icon_conta}

E esteja na tela de explorar
    Click Element    ${btn_explorer}
    Wait Until Page Contains  Trending
    Page Should Contain Text  Music
    Page Should Contain Text  Movies
    Page Should Contain Text  Gaming
    Page Should Contain Text  News
    Page Should Contain Text  Sports
    Page Should Contain Text  Learning

Dado que esteja na tela de explorar
    Wait Until Page Contains Element    ${video}

Quando der "${SWIPES}" swipes na tela
    FOR  ${i}  IN RANGE  0  ${SWIPES}
        Swipe  625  1500  625  700
        Sleep  1
    END
    
E clicar em um vídeo
    Click Element    ${video}

Então o vídeo sera aberto
    Wait Until Page Contains  ON TRENDING
    Page Should Contain Text  views
    Page Should Contain Text  Share
    Page Should Contain Text  Download
    Page Should Contain Text  Save
    Minimizar video
    
Minimizar video
    Sleep  1
    Press Keycode    4
    Press Keycode    4