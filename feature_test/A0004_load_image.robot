*** Settings ***
Documentation     Load image files in close all and open mode
...
...               This test trys to load images into CARTA and check    
...               if images are loaded properly.
Resource          resource.robot

*** Test Cases ***
Load FITS Image
    [Setup]    Open Browser To CARTA
    Sleep    1
    Go To E2E QA Folder
    Scroll Element Into View    xpath://*[contains(text(), "M17_SWex.fits")]
    Double Click Element    xpath://*[contains(text(), "M17_SWex.fits")]
    Wait Until Page Does Not Contain    File Browser
    Wait Until Element Is Not Visible    ${PROGRESS_CLOUD}    timeout=10 
    Wait Until Element Is Not Visible    ${IMAGE_VIEWER_RATIO_TAG}
    Mouse Out    ${RASTER_CANVAS}
    Sleep    1
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    before.png
    Click Element    xpath://*[contains(text(), "90%")]
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    after.png
    Compare Images    before.png    after.png    0.073
    Remove Files    before.png    after.png
    [Teardown]    Close Browser

Load CASA Image
    [Setup]    Open Browser To CARTA
    Sleep    1
    Go To E2E QA Folder
    Scroll Element Into View    xpath://*[contains(text(), "M17_SWex.image")]
    Double Click Element    xpath://*[contains(text(), "M17_SWex.image")]
    Wait Until Page Does Not Contain    File Browser
    Wait Until Element Is Not Visible    ${PROGRESS_CLOUD}    timeout=10 
    Wait Until Element Is Not Visible    ${IMAGE_VIEWER_RATIO_TAG}
    Mouse Out    ${RASTER_CANVAS}
    Sleep    1
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    before.png
    Click Element    xpath://*[contains(text(), "90%")]
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    after.png
    Compare Images    before.png    after.png    0.073
    Remove Files    before.png    after.png
    [Teardown]    Close Browser

Load MIRIAD Image
    [Setup]    Open Browser To CARTA
    Sleep    1
    Go To E2E QA Folder
    Scroll Element Into View    xpath://*[contains(text(), "M17_SWex.miriad")]
    Double Click Element    xpath://*[contains(text(), "M17_SWex.miriad")]
    Wait Until Page Does Not Contain    File Browser
    Wait Until Element Is Not Visible    ${PROGRESS_CLOUD}    timeout=10 
    Wait Until Element Is Not Visible    ${IMAGE_VIEWER_RATIO_TAG}
    Mouse Out    ${RASTER_CANVAS}
    Sleep    1
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    before.png
    Click Element    xpath://*[contains(text(), "90%")]
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    after.png
    Compare Images    before.png    after.png    0.073
    Remove Files    before.png    after.png
    [Teardown]    Close Browser


Load HDF5 Image
    [Setup]    Open Browser To CARTA
    Sleep    1
    Go To E2E QA Folder
    Scroll Element Into View    xpath://*[contains(text(), "M17_SWex.hdf5")]
    Double Click Element    xpath://*[contains(text(), "M17_SWex.hdf5")]
    Wait Until Page Does Not Contain    File Browser
    Wait Until Element Is Not Visible    ${PROGRESS_CLOUD}    timeout=10 
    Wait Until Element Is Not Visible    ${IMAGE_VIEWER_RATIO_TAG}
    Mouse Out    ${RASTER_CANVAS}
    Sleep    1
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    before.png
    Click Element    xpath://*[contains(text(), "90%")]
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    after.png
    Compare Images    before.png    after.png    0.073
    Remove Files    before.png    after.png
    [Teardown]    Close Browser


Load Large FITS Image
    [Setup]    Open Browser To CARTA
    Sleep    1
    Go To E2E QA Folder
    Scroll Element Into View    xpath://*[contains(text(), "h_m51_b_s05_drz_sci.fits")]
    Double Click Element    xpath://*[contains(text(), "h_m51_b_s05_drz_sci.fits")]
    Wait Until Page Does Not Contain    File Browser
    Wait Until Element Is Not Visible    ${PROGRESS_CLOUD}    timeout=10 
    Wait Until Element Is Not Visible    ${IMAGE_VIEWER_RATIO_TAG}
    Mouse Out    ${RASTER_CANVAS}
    Sleep    1
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    before.png
    Click Element    xpath://*[contains(text(), "90%")]
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    after.png
    Compare Images    before.png    after.png    0.21
    Remove Files    before.png    after.png
    [Teardown]    Close Browser