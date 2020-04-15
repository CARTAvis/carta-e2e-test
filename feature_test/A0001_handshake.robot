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
    Mouse Out    ${RASTER_CANVAS}
    Sleep    1
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    before.png
    Click Element    xpath://*[contains(text(), "90%")]
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    after.png
    ${result}=    Run    diff -s before.png after.png
    Should Contain      ${result}    differ
    Remove Files    before.png    after.png    
    [Teardown]    Close Browser
