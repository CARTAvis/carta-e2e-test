*** Settings ***
Documentation     A user tries to open supported images from the server. 
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Load CASA Image
    [Setup]    Initialize CARTA With An Image For Testing    M17_SWex.image    1
    Mouse Over    ${GUI_ELEMENT_ImageViewerCanvas}
    Wait Until Element Contains    ${GUI_ELEMENT_CursorInfoBar}    Value    timeout=1
    [Teardown]    Close Browser

Load FITS Image
    [Setup]    Initialize CARTA With An Image For Testing    M17_SWex.fits    1
    Mouse Over    ${GUI_ELEMENT_ImageViewerCanvas}
    Wait Until Element Contains    ${GUI_ELEMENT_CursorInfoBar}    Value    timeout=1
    [Teardown]    Close Browser

Load HDF5 Image
    [Setup]    Initialize CARTA With An Image For Testing    M17_SWex.hdf5    1
    Mouse Over    ${GUI_ELEMENT_ImageViewerCanvas}
    Wait Until Element Contains    ${GUI_ELEMENT_CursorInfoBar}    Value    timeout=1
    [Teardown]    Close Browser

Load MIRIAD Image
    [Setup]    Initialize CARTA With An Image For Testing    M17_SWex.miriad    1
    Mouse Over    ${GUI_ELEMENT_ImageViewerCanvas}
    Wait Until Element Contains    ${GUI_ELEMENT_CursorInfoBar}    Value    timeout=1
    [Teardown]    Close Browser

