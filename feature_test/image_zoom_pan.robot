*** Settings ***
Documentation     Testing image zoom and pan actions.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Image Zoom Test
    [Setup]    Initialize CARTA With An Image For Testing    m_hubble_deepField.fits    5
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    before.png
    Set Selenium Speed    0
    Repeat Keyword    10    Click Element    ${GUI_ELEMENT_ZoomInButton}
    Sleep    5
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    after.png
    Repeat Keyword    10    Click Element    ${GUI_ELEMENT_ZoomOutButton}
    Sleep    5
    Set Selenium Speed    ${DELAY}
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    final.png
    Sleep    1
    ${result}=    Run    diff -s before.png after.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s before.png final.png
    Should Contain      ${result}    identical
    Remove Files    before.png    after.png    final.png
    [Teardown]    Close Browser

Crazy Image Zoom Test
    [Setup]    Initialize CARTA With An Image For Testing    m_hubble_deepField.fits    5
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    before.png
    Set Selenium Speed    0
    Repeat Keyword    10    Click Element    ${GUI_ELEMENT_ZoomInButton}
    Repeat Keyword    10    Click Element    ${GUI_ELEMENT_ZoomOutButton}
    Repeat Keyword    10    Click Element    ${GUI_ELEMENT_ZoomInButton}
    Repeat Keyword    10    Click Element    ${GUI_ELEMENT_ZoomOutButton}
    Repeat Keyword    10    Click Element    ${GUI_ELEMENT_ZoomInButton}
    Repeat Keyword    10    Click Element    ${GUI_ELEMENT_ZoomOutButton}
    Repeat Keyword    10    Click Element    ${GUI_ELEMENT_ZoomInButton}
    Repeat Keyword    10    Click Element    ${GUI_ELEMENT_ZoomOutButton}
    Repeat Keyword    10    Click Element    ${GUI_ELEMENT_ZoomInButton}
    Repeat Keyword    10    Click Element    ${GUI_ELEMENT_ZoomOutButton}                
    Sleep    3
    Set Selenium Speed    ${DELAY}
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    final.png
    Sleep    1
    ${result}=    Run    diff -s before.png final.png
    Should Contain      ${result}    identical
    Remove Files    before.png    final.png    
    [Teardown]    Close Browser

Image Pan Test
    [Setup]    Initialize CARTA With An Image For Testing    m_hubble_deepField.fits    5
    Click Element    ${GUI_ELEMENT_ZoomToOneXButton}
    Sleep    5
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    before.png
    Set Selenium Speed    0
    Repeat Keyword    50    Click Element At Coordinates    ${GUI_ELEMENT_ImageViewerCanvas}    20    20
    Sleep    5
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    after.png
    Repeat Keyword    50    Click Element At Coordinates    ${GUI_ELEMENT_ImageViewerCanvas}    -20    -20
    Sleep    5
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    final.png
    Set Selenium Speed    ${DELAY}
    ${result}=    Run    diff -s before.png after.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s before.png final.png
    Should Contain      ${result}    identical
    Remove Files    before.png    after.png    final.png
    [Teardown]    Close Browser

Image Super Zoom Test1
    [Setup]    Initialize CARTA With An Image For Testing    m_hubble_deepField.fits    5
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    before.png
    Set Selenium Speed    0.2    
    Repeat Keyword    10    Click Element    ${GUI_ELEMENT_ZoomOutButton}
    Sleep    5
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    after.png
    Repeat Keyword    30    Click Element    ${GUI_ELEMENT_ZoomInButton}
    Sleep    5
    Repeat Keyword    20    Click Element    ${GUI_ELEMENT_ZoomOutButton}
    Sleep    5
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    final.png
    Set Selenium Speed    ${DELAY}
    ${result}=    Run    diff -s before.png after.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s before.png final.png
    Should Contain      ${result}    identical
    Remove Files    before.png    after.png    final.png
    [Teardown]    Close Browser

Image Super Zoom Test2
    [Setup]    Initialize CARTA With An Image For Testing    m_hubble_deepField.fits    5
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    before.png
    Set Selenium Speed    0.2    
    Repeat Keyword    20    Click Element    ${GUI_ELEMENT_ZoomInButton}
    Sleep    5
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    after.png
    Repeat Keyword    25    Click Element    ${GUI_ELEMENT_ZoomOutButton}
    Sleep    5
    Repeat Keyword    5    Click Element    ${GUI_ELEMENT_ZoomInButton}
    Sleep    10
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    final.png
    Set Selenium Speed    ${DELAY}
    ${result}=    Run    diff -s before.png after.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s before.png final.png
    Should Contain      ${result}    identical
    Remove Files    before.png    after.png    final.png
    [Teardown]    Close Browser


# this one will make the backend crash
#Image Super Zoom Test3
#    [Setup]    Initialize CARTA With An Image For Testing    m_hubble_deepField.fits    30
#    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
#    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    before.png
#    Set Selenium Speed    0    
#    Repeat Keyword    20    Click Element    ${GUI_ELEMENT_ZoomInButton}
#    Sleep    5
#    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
#    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    after.png
#    Repeat Keyword    30    Click Element    ${GUI_ELEMENT_ZoomOutButton}
#    Sleep    5
#    Repeat Keyword    10    Click Element    ${GUI_ELEMENT_ZoomInButton}
#    Sleep    60
#    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
#    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    final.png
#    Set Selenium Speed    ${DELAY}
#    ${result}=    Run    diff -s before.png after.png
#    Should Contain      ${result}    differ
#    ${result}=    Run    diff -s before.png final.png
#    Should Contain      ${result}    identical
#    #Remove Files    before.png    after.png    final.png
#    [Teardown]    Close Browser

