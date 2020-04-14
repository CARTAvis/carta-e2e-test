*** Settings ***
Documentation     Check image file filter of the backend
...
...               This test trys to check if backend returns   
...               correct file list. It should include only folders, 
...               CASA images, HDF5 images, FITS images, and MIRIAD images.
Resource          resource.robot

*** Test Cases ***
Backend Image File Filter
    [Setup]    Open Browser To CARTA
    Sleep    1
    Go To E2E QA Folder
    Table Cell Should Contain    ${FILE_LIST}    2    2    empty.fits
    Table Cell Should Contain    ${FILE_LIST}    2    3    ${EMPTY}
    Table Cell Should Contain    ${FILE_LIST}    2    4    ${EMPTY}
    Table Cell Should Contain    ${FILE_LIST}    3    2    empty.hdf5
    Table Cell Should Contain    ${FILE_LIST}    3    3    ${EMPTY}
    Table Cell Should Contain    ${FILE_LIST}    3    4    ${EMPTY}
    Table Cell Should Contain    ${FILE_LIST}    4    2    empty.image
    Table Cell Should Contain    ${FILE_LIST}    4    3    ${EMPTY}
    Table Cell Should Contain    ${FILE_LIST}    4    4    ${EMPTY}
    Table Cell Should Contain    ${FILE_LIST}    5    2    empty.miriad
    Table Cell Should Contain    ${FILE_LIST}    5    3    ${EMPTY}
    Table Cell Should Contain    ${FILE_LIST}    5    4    ${EMPTY}
    Table Cell Should Contain    ${FILE_LIST}    6    2    empty_folder
    Table Cell Should Contain    ${FILE_LIST}    6    3    ${EMPTY}
    Table Cell Should Contain    ${FILE_LIST}    6    4    ${EMPTY}
    Table Cell Should Contain    ${FILE_LIST}    9    2    M17_SWex.fits
    Table Cell Should Contain    ${FILE_LIST}    9    3    FITS
    Table Cell Should Contain    ${FILE_LIST}    9    4    51.4 MB
    Table Cell Should Contain    ${FILE_LIST}    10    2    M17_SWex.hdf5
    Table Cell Should Contain    ${FILE_LIST}    10    3    HDF5
    Table Cell Should Contain    ${FILE_LIST}    10    4    114.9 MB
    Table Cell Should Contain    ${FILE_LIST}    11    2    M17_SWex.image
    Table Cell Should Contain    ${FILE_LIST}    11    3    CASA
    Table Cell Should Contain    ${FILE_LIST}    11    4    53.0 MB
    Table Cell Should Contain    ${FILE_LIST}    12    2    M17_SWex.miriad
    Table Cell Should Contain    ${FILE_LIST}    12    3    Miriad
    Table Cell Should Contain    ${FILE_LIST}    12    4    53.0 MB
    Table Cell Should Contain    ${FILE_LIST}    15    2    spire500_ext.fits: HDU 1 ExtName: image
    Table Cell Should Contain    ${FILE_LIST}    15    3    FITS
    Table Cell Should Contain    ${FILE_LIST}    15    4    17.6 MB
    Table Cell Should Contain    ${FILE_LIST}    16    2    spire500_ext.fits: HDU 6 ExtName: error
    Table Cell Should Contain    ${FILE_LIST}    16    3    FITS
    Table Cell Should Contain    ${FILE_LIST}    16    4    17.6 MB
    Table Cell Should Contain    ${FILE_LIST}    17    2    spire500_ext.fits: HDU 7 ExtName: coverage
    Table Cell Should Contain    ${FILE_LIST}    17    3    FITS
    Table Cell Should Contain    ${FILE_LIST}    17    4    17.6 MB        
    Page Should Not Contain Element    xpath://*[contains(text(), "empty.txt")]
    Page Should Not Contain Element    xpath://*[contains(text(), "empty2.fits")]
    Page Should Not Contain Element    xpath://*[contains(text(), "empty2.hdf5")]
    Page Should Not Contain Element    xpath://*[contains(text(), "empty2.image")]
    Page Should Not Contain Element    xpath://*[contains(text(), "empty2.miriad")]
    
    # add tests for region files, those should not be present in the list 
    # add tests for catalogue files, those should not be present in the list
    
    Scroll Element Into View    xpath://*[contains(text(), "empty.fits")]
    Click Element    xpath://*[contains(text(), "empty.fits")]
    Wait Until Page Contains    No file selected.
    Page Should Not Contain Element    xpath://*[contains(text(), "M17_SWex.fits")]
    Click Element    xpath://*[contains(text(), "set_QA_e2e")]
    Wait Until Page Contains    No file selected.
    Scroll Element Into View    xpath://*[contains(text(), "empty.hdf5")]
    Click Element    xpath://*[contains(text(), "empty.hdf5")]
    Wait Until Page Contains    No file selected.
    Page Should Not Contain Element    xpath://*[contains(text(), "M17_SWex.fits")]
    Click Element    xpath://*[contains(text(), "set_QA_e2e")]
    Wait Until Page Contains    No file selected.
    Scroll Element Into View    xpath://*[contains(text(), "empty.image")]
    Click Element    xpath://*[contains(text(), "empty.image")]
    Wait Until Page Contains    No file selected.
    Page Should Not Contain Element    xpath://*[contains(text(), "M17_SWex.fits")]
    Click Element    xpath://*[contains(text(), "set_QA_e2e")]
    Wait Until Page Contains    No file selected.
    Scroll Element Into View    xpath://*[contains(text(), "empty.miriad")]
    Click Element    xpath://*[contains(text(), "empty.miriad")]
    Wait Until Page Contains    No file selected.
    Page Should Not Contain Element    xpath://*[contains(text(), "M17_SWex.fits")]
    Click Element    xpath://*[contains(text(), "set_QA_e2e")]
    Wait Until Page Contains    No file selected.
    Scroll Element Into View    xpath://*[contains(text(), "empty_folder")]
    Click Element    xpath://*[contains(text(), "empty_folder")]
    Wait Until Page Contains    No file selected.
    Page Should Not Contain Element    xpath://*[contains(text(), "M17_SWex.fits")]
    Click Element    xpath://*[contains(text(), "set_QA_e2e")]
    Wait Until Page Contains    No file selected.    
    [Teardown]    Close Browser
