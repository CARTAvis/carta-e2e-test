*** Settings ***
Documentation     A prototype test with integration of psrecord
...
...               This test loads an image and calls psrecord to 
...               monitor ram and cpu usages.
Resource          resource.robot

*** Test Cases ***
Load Image
    [Setup]    Open Browser To CARTA
    Sleep     1
    Run psrecord
    Load Image
    Terminate psrecord
    #Sleep    1
    [Teardown]    Close Browser
