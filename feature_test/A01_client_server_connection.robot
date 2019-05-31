*** Settings ***
Documentation     A user visits CARTA url and requests a file list from the server. 
...               This is to check if the frondend is fully loaded and the backend 
...               is functional.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Establish CARTA Client Connection
    [Setup]    Open Browser To CARTA Frontend
    Element Should Be Visible    ${GUI_ELEMENT_File}
    Wait Until Element Contains    ${GUI_ELEMENT_ViewerInit}    No file loaded    timeout=1
    [Teardown]    Close Browser

Establish CARTA Client-Server Connection
    [Setup]    Open Browser To CARTA Frontend
    Element Should Be Visible    ${GUI_ELEMENT_File}
    Wait Until Element Contains    ${GUI_ELEMENT_ViewerInit}    No file loaded    timeout=1
    Element Should Be Enabled    ${GUI_ELEMENT_File}
    Click Element    ${GUI_ELEMENT_File}
    Element Should Be Enabled    ${GUI_ELEMENT_OpenImage}
    Click Element    ${GUI_ELEMENT_OpenImage}
    Wait Until Element Contains    ${GUI_ELEMENT_FileList}    public    timeout=1
    Click Element    ${GUI_ELEMENT_public_Folder}
    Wait Until Element Contains    ${GUI_ELEMENT_FileList}    set_QA    timeout=1
    [Teardown]    Close Browser
