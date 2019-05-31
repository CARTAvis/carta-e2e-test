*** Settings ***
Documentation     A user visits CARTA url then applies an API key 
...               to see private folders.
...               
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Connect CARTA Server With Known API Key
    [Setup]    Open Browser To CARTA Frontend
    Enable API Key Authentication
    Disable API Key Authentication
    [Teardown]    Close Browser

Connect CARTA Server With Unknown API Key
    [Setup]    Open Browser To CARTA Frontend
    Enable Authentication With Unknown API Key
    Disable API Key Authentication
    [Teardown]    Close Browser