*** Settings ***
Documentation     Load image files in append mode
...
...               This test trys to load images into CARTA and check    
...               if images are loaded properly.
Resource          resource.robot

*** Test Cases ***
Load And Append images
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
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    before_fits.png    
    Sleep    1
    Launch File Browser For Appending Image
    Scroll Element Into View    xpath://*[contains(text(), "M17_SWex.image")]
    Double Click Element    xpath://*[contains(text(), "M17_SWex.image")]
    Wait Until Page Does Not Contain    File Browser
    Wait Until Element Is Not Visible    ${PROGRESS_CLOUD}    timeout=10 
    Wait Until Element Is Not Visible    ${IMAGE_VIEWER_RATIO_TAG}
    Mouse Out    ${RASTER_CANVAS}
    Sleep    1
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    before_casa.png        
    Sleep    1    
    Launch File Browser For Appending Image
    Scroll Element Into View    xpath://*[contains(text(), "M17_SWex.miriad")]
    Double Click Element    xpath://*[contains(text(), "M17_SWex.miriad")]
    Wait Until Page Does Not Contain    File Browser
    Wait Until Element Is Not Visible    ${PROGRESS_CLOUD}    timeout=10 
    Wait Until Element Is Not Visible    ${IMAGE_VIEWER_RATIO_TAG}
    Mouse Out    ${RASTER_CANVAS}
    Sleep    1
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    before_miriad.png    
    Sleep    1
    Launch File Browser For Appending Image
    Scroll Element Into View    xpath://*[contains(text(), "M17_SWex.hdf5")]
    Double Click Element    xpath://*[contains(text(), "M17_SWex.hdf5")]
    Wait Until Page Does Not Contain    File Browser
    Wait Until Element Is Not Visible    ${PROGRESS_CLOUD}    timeout=10 
    Wait Until Element Is Not Visible    ${IMAGE_VIEWER_RATIO_TAG}
    Mouse Out    ${RASTER_CANVAS}
    Sleep    1
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    before_hdf5.png    
    Sleep    1
    Element Should Contain    ${LAYER_LIST_WIDGET_TABLE}    M17_SWex.fits
    Element Should Contain    ${LAYER_LIST_WIDGET_TABLE}    M17_SWex.image
    Element Should Contain    ${LAYER_LIST_WIDGET_TABLE}    M17_SWex.miriad
    Element Should Contain    ${LAYER_LIST_WIDGET_TABLE}    M17_SWex.hdf5
    Click Element     xpath://*[contains(text(), "M17_SWex.fits")]
    Mouse Out    ${RASTER_CANVAS}
    Sleep    1
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    after_fits.png
    Click Element     xpath://*[contains(text(), "M17_SWex.image")]
    Mouse Out    ${RASTER_CANVAS}
    Sleep    1
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    after_casa.png
    Click Element     xpath://*[contains(text(), "M17_SWex.miriad")]
    Mouse Out    ${RASTER_CANVAS}
    Sleep    1
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    after_miriad.png    
    Click Element     xpath://*[contains(text(), "M17_SWex.hdf5")]
    Mouse Out    ${RASTER_CANVAS}
    Sleep    1
    Capture Element Screenshot    ${IMAGE_VIEWER_CONTAINER}    after_hdf5.png    
    Compare Images    before_fits.png    after_fits.png    0.001
    Compare Images    before_casa.png    after_casa.png    0.001
    Compare Images    before_miriad.png    after_miriad.png    0.001
    Compare Images    before_hdf5.png    after_hdf5.png    0.001
    Sleep    1    
    [Teardown]    Close Browser
