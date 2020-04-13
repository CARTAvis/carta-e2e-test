*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Load Image
    [Setup]    Open Browser To Login Page
    Sleep     1
    Run psrecord
    Load Image
    Terminate psrecord
    #Sleep    1
    [Teardown]    Close Browser
