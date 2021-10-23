*** Variables ***
${icon_login}  id=com.google.android.youtube:id/mobile_topbar_avatar
${btn_login}   id=com.google.android.youtube:id/button
${btn_add_conta}  id=com.google.android.youtube:id/name
${input_email}  xpath=//android.widget.EditText[@resource-id='identifierId']
${btn_next}  xpath=//android.widget.Button[@text='NEXT']
${input_password}  xpath=//*[@resource-id='password']//android.widget.EditText
${btn_aceitar}  xpath=//android.widget.Button[@text='I agree']

# Opçoes
${check_drive}  id=com.google.android.gms:id/sud_items_switch
${btn_aceitar_2}  xpath=//android.widget.Button[@text='ACCEPT']
${icon_conta}  xpath=//android.widget.ImageView[@content-desc="Account"]

# banner
${banner}  xpath=//android.view.ViewGroup[@content-desc="Fechar"]

########################################################################################
${btn_explorer}  xpath=//android.widget.Button[@content-desc="Explore"]

${video}  xpath=(//*[contains(@content-desc, 'Go to channel')]/..)[1]