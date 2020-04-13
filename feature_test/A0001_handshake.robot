*** Settings ***
Documentation     Check frontend and backend connection
...
...               This test trys to access the backend and  
...               verifies if frontend is loaded properly and 
...               backend is functional.
Resource          resource.robot

*** Test Cases ***
Frontend Backend Handshake
    [Setup]    Open Browser To CARTA
    Sleep    1
    Mouse Over    ${SERVER_STATUS_ICON}
    Page Should Contain    Connected to server
    Wait Until Page Contains    No file selected.
    Table Should Contain    ${FILE_LIST}    set_QA_e2e
    Scroll Element Into View    ${QA_FOLDER}
    Click Element    ${QA_FOLDER}
    Wait Until Page Contains    No file selected.
    Table Should Contain    ${FILE_LIST}    M17_SWex.fits
    Click Element    xpath://*[contains(text(), "M17_SWex.fits")]
    Wait Until Element Contains    ${FILE_INFO_TAB}    M17_SWex.fits
    Click Element    ${LOAD_IMAGE_BUTTON}
    Wait Until Element Is Not Visible    ${PROGRESS_CLOUD}    timeout=10    
    Mouse Over    ${RASTER_CANVAS}
    Element Should Contain    ${CURSOR_INFO_OVERLAY}    320, 400
    [Teardown]    Close Browser
