*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary
Library           Process

*** Variables ***
${SERVER}         octopus.local:2000/?socketUrl=ws://octopus.local:3000
${BROWSER}        Chrome
${DELAY}          0
${LOGIN URL}      http://${SERVER}/
${TITLE}          CARTA v1.3


${SERVER_STATUS_ICON}    xpath://*[@id="root"]/div/div[1]/span[6]/span/span

${FILE_LIST}    xpath://*[@id="root"]/div/div[3]/div[1]/div/div[2]/div/div[3]/div/div[1]/table
${QA_FOLDER}    xpath://*[contains(text(), "set_QA_e2e")]
${FILE_INFO_TAB}    xpath://*[@id="root"]/div/div[3]/div[1]/div/div[2]/div/div[3]/div/div[2]/div/pre
${CURSOR_INFO_OVERLAY}    xpath://*[@id="root"]/div/div[10]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div[3]
${RASTER_CANVAS}    xpath://*[@id="raster-canvas"]
${LOAD_IMAGE_BUTTON}    xpath://*[contains(text(), "Load")]


${BASE_IMAGE_FOLDER}    xpath://*[contains(text(), "carta_image_pool")]
${LARGE_TEST_IMAGE}    xpath://*[contains(text(), "h_m51_b_s05_drz_sci.fits")]
${FILE_INFO}    xpath://*[@id="root"]/div/div[3]/div[1]/div/div[2]/div/div[3]/div/div[2]/div/pre
${LOAD_IMAGE_BUTTON}    xpath://*[contains(text(), "Load")]
${PROGRESS_CLOUD}    xpath://*[@id="root"]/div/div[1]/span[5]/span/span

*** Keywords ***
Open Browser To CARTA
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Reload Page
    Set Selenium Speed    ${DELAY}
    Title Should Be    ${TITLE}

Load Image
    Click Element    ${BASE_IMAGE_FOLDER}
    Wait Until Page Contains Element    ${LARGE_TEST_IMAGE}    timeout=2
    Click Element    ${LARGE_TEST_IMAGE}
    Wait Until Element Contains    ${FILE_INFO}    Name
    Wait Until Element Is Enabled    ${LOAD_IMAGE_BUTTON}    timeout=2
    Click Element    ${LOAD_IMAGE_BUTTON}
    Wait Until Element Is Visible    ${PROGRESS_CLOUD}    timeout=10
    Wait Until Element Is Not Visible    ${PROGRESS_CLOUD}    timeout=10
    

Run psrecord
    Start Process    psrecord $(pgrep carta_backend) --interval 0.05 --plot psrecord_output.png    shell=yes    alias=psrecord
    Process Should Be Running    handle=psrecord
        
    
Terminate psrecord
    Send Signal To Process    SIGINT    handle=psrecord
