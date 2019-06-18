*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary
Library           DateTime
Library           OperatingSystem


*** Variables ***
${SERVER}         carta.asiaa.sinica.edu.tw/frontend/dev/?socketUrl=wss://carta.asiaa.sinica.edu.tw/socketdev
${BROWSER}        Chrome
${DELAY}          0.2
${LOGIN URL}      http://${SERVER}/
${index}
${WINDOW_SIZE_X}    1280
${WINDOW_SIZE_Y}    800

${GUI_ELEMENT_File}         xpath://*[@id="root"]/div/div[1]/span[1]/span/ul/li/a/div
${GUI_ELEMENT_OpenImage}    xpath:/html/body/div[5]/div/div/div/div/ul/li[1]/a
${GUI_ELEMENT_FileList}     xpath://*[@id="root"]/div/div[5]/div[1]/div/div[2]/div/div[2]/div[1]/table/tbody
${GUI_ELEMENT_FileListCloseButton}    xpath://*[@id="root"]/div/div[5]/div[1]/div/div[2]/div/div[3]/div/a/span

${GUI_ELEMENT_APIkey}    xpath:/html/body/div[5]/div/div/div/div/ul/li[8]/a
${GUI_ELEMENT_APIkeyEntry}    xpath://*[@id="root"]/div/div[4]/div[1]/div/div[2]/div/div[2]/div/input
${GUI_ELEMEMT_APIkeyApplyButton}    xpath://*[@id="root"]/div/div[4]/div[1]/div/div[2]/div/div[3]/div/a[3]/span
${GUI_ELEMEMT_APIkeyClearButton}    xpath://*[@id="root"]/div/div[4]/div[1]/div/div[2]/div/div[3]/div/a[2]

${GUI_ELEMENT_ViewerInit}   xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div[1]/h4
${GUI_ELEMENT_FileInfoWindow}    xpath://*[@id="root"]/div/div[5]/div[1]/div/div[2]/div/div[2]/div[2]/pre
${GUI_ELEMENT_LoadImageButton}    xpath://*[@id="root"]/div/div[5]/div[1]/div/div[2]/div/div[3]/div/span/span/a
${GUI_ELEMENT_CursorInfoBar}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div[2]
${GUI_ELEMENT_ImageViewerCanvas}    xpath://*[@id="raster-canvas"]

${GUI_ELEMENT_HelpMenu}     xpath://*[@id="root"]/div/div[1]/span[4]/span/ul/li/a
${GUI_ELEMENT_OnlineManual}    xpath:/html/body/div[5]/div/div/div/div/ul/li[1]/a
${USER_MANUAL_URL}    https://carta.readthedocs.io/en/latest/
${GUI_ELEMENT_Shortcut}    xpath:/html/body/div[5]/div/div/div/div/ul/li[2]/a
${GUI_ELEMENT_ShortcutWindow}    xpath:/html/body/div[6]/div/div[2]/div/div
${GUI_ELEMENT_About}    xpath:/html/body/div[5]/div/div/div/div/ul/li[3]/a
${GUI_ELEMENT_AboutWindow}    xpath://*[@id="root"]/div/div[6]/div[1]/div/div[2]/div/div[1]

${GUI_ELEMENT_public_Folder}    xpath://*[contains(text(), "public")]
${GUI_ELEMENT_setQA_Folder}    xpath://*[contains(text(), "set_QA")]
${GUI_ELEMENT_setQA_CASAImage}    xpath://*[contains(text(), "M17_SWex.image")]
${GUI_ELEMENT_setQA_FITSImage}    xpath://*[contains(text(), "M17_SWex.fits")]
${GUI_ELEMENT_setQA_MIRIADImage}    xpath://*[contains(text(), "M17_SWex.miriad")]
${GUI_ELEMENT_setQA_HDF5Image}    xpath://*[contains(text(), "M17_SWex.hdf5")]

${GUI_ELEMENT_PanModeButton}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div[4]/span[2]
${GUI_ELEMENT_ZoomInButton}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div[4]/span[3]
${GUI_ELEMENT_ZoomOutButton}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div[4]/span[4]
${GUI_ELEMENT_ZoomToOneXButton}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div[4]/span[5]
${GUI_ELEMENT_ZoomToFitButton}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div[4]/span[6]

${GUI_ELEMENT_Clip90p0Button}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[1]/div[1]/div/button[1]
${GUI_ELEMENT_Clip95p0Button}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[1]/div[1]/div/button[2]
${GUI_ELEMENT_Clip99p0Button}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[1]/div[1]/div/button[3]
${GUI_ELEMENT_Clip99p5Button}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[1]/div[1]/div/button[4]
${GUI_ELEMENT_Clip99p9Button}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[1]/div[1]/div/button[5]
${GUI_ELEMENT_Clip99p95Button}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[1]/div[1]/div/button[6]
${GUI_ELEMENT_Clip99p99Button}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[1]/div[1]/div/button[7]
${GUI_ELEMENT_Clip100p0Button}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[1]/div[1]/div/button[8]
${GUI_ELEMENT_ClipCustomButton}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[1]/div[1]/div/button[9]
${GUI_ELEMENT_ClipValueMin}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[2]/div[4]/div/div/div/input
${GUI_ELEMENT_ClipValueMax}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[2]/div[5]/div/div/div/input
${GUI_ELEMENT_ScalingButton}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[2]/div[2]/div/span/span/div/button
${GUI_ELEMENT_ScalingOptions_linear}    xpath:/html/body/div[6]/div/div/div/div/div/ul/li[1]    
${GUI_ELEMENT_ScalingOptions_log}    xpath:/html/body/div[6]/div/div/div/div/div/ul/li[2]
${GUI_ELEMENT_ScalingOptions_squareRoot}    xpath:/html/body/div[6]/div/div/div/div/div/ul/li[3]
${GUI_ELEMENT_ScalingOptions_squared}    xpath:/html/body/div[6]/div/div/div/div/div/ul/li[4]
${GUI_ELEMENT_ScalingOptions_gamma}    xpath:/html/body/div[6]/div/div/div/div/div/ul/li[5]
${GUI_ELEMENT_ScalingOptions_power}    xpath:/html/body/div[6]/div/div/div/div/div/ul/li[6]

${GUI_ELEMENT_ScalingLogAlpha}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[2]/div[4]/div/div/div/input
${GUI_ELEMENT_ScalingGammaGamma}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[2]/div[4]/div/div/div[1]/input
${GUI_ELEMENT_ScalingGammaSpinUp}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[2]/div[4]/div/div/div[2]/button[1]
${GUI_ELEMENT_ScalingGammaSpinDown}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[2]/div[4]/div/div/div[2]/button[2]
${GUI_ELEMENT_ScalingPowerAlpha}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[2]/div[4]/div/div/div/input

${GUI_ELEMENT_ColormapButton}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[2]/div[3]/div/span/span/div/button
${GUI_ELEMENT_ColormapList}    xpath:/html/body/div[6]/div/div/div/div/div/ul

${GUI_ELEMENT_HistogramButton}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[2]/div[1]/div/span/span/div/button
${GUI_ELEMENT_HistogramMode_PerCube}    xpath:/html/body/div[6]/div/div/div/div/div/ul/li[1]
${GUI_ELEMENT_HistogramMode_PerFrame}    xpath:/html/body/div[6]/div/div/div/div/div/ul/li[2]
${GUI_ELEMENT_HistogramModeAlert}    xpath:/html/body/div[7]/div/div[2]/div
${GUI_ELEMENT_HistogramModeAlert_OK}    xpath:/html/body/div[7]/div/div[2]/div/div[2]/button[1]
${GUI_ELEMENT_HistogramModeAlert_Cancel}    xpath:/html/body/div[7]/div/div[2]/div/div[2]/button[2]
${GUI_ELEMENT_HistogramProgress}    xpath:/html/body/div[8]/div/div[2]/div
${GUI_ELEMENT_HistogramProgress_Cancel}    xpath:/html/body/div[8]/div/div[2]/div/div[3]/div/span/span/button

${GUI_ELEMENT_RenderConfigSetting}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[3]/button
${GUI_ELEMENT_RenderConfig_HistogramPlot}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[1]/div[2]
${GUI_ELEMENT_RenderConfigSetting_LogScale_Checkbox}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[3]/div[2]/div/div/div/label[1]/input
${GUI_ELEMENT_RenderConfigSetting_ShowLabels_Checkbox}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[3]/div[2]/div/div/div/label[2]/input
${GUI_ELEMENT_RenderConfigSetting_LogScale_Switch}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[3]/div[2]/div/div/div/label[1]/span
${GUI_ELEMENT_RenderConfigSetting_ShowLabels_Switch}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[3]/div[2]/div/div/div/label[2]/span
${GUI_ELEMENT_RenderConfigSetting_StyleStep}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[3]/div[2]/div/div/div/div/span[1]/span/button
${GUI_ELEMENT_RenderConfigSetting_StyleLine}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[3]/div[2]/div/div/div/div/span[2]/span/button
${GUI_ELEMENT_RenderConfigSetting_StylePoint}    xpath://*[@id="root"]/div/div[9]/div[2]/div/div[1]/div[3]/div[2]/div/div/div/div[3]/div[2]/div/div/div/div/span[3]/span/button



*** Keywords ***
Open Browser To CARTA Frontend
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Set Window Position    30    30
    Set Window Size    ${WINDOW_SIZE_X}    ${WINDOW_SIZE_Y}
    Reload Page
    Set Selenium Speed    ${DELAY}
      

Enable API Key Authentication
    Click Element    ${GUI_ELEMENT_File}
    Element Should Be Enabled    ${GUI_ELEMENT_APIkey}
    Click Element    ${GUI_ELEMENT_APIkey}
    Clear Element Text    ${GUI_ELEMENT_APIkeyEntry}
    Input Text    ${GUI_ELEMENT_APIkeyEntry}    11111111-1111-1111-1111-111111111111
    Element Should Be Enabled    ${GUI_ELEMEMT_APIkeyApplyButton}
    Click Element    ${GUI_ELEMEMT_APIkeyApplyButton}
    Wait Until Element Contains    ${GUI_ELEMENT_ViewerInit}    No file loaded    timeout=1
    Click Element    ${GUI_ELEMENT_File}
    Click Element    ${GUI_ELEMENT_OpenImage}
    Wait Until Element Contains    ${GUI_ELEMENT_FileList}    public    timeout=1
    Element Should Contain    ${GUI_ELEMENT_FileList}    api_private1    timeout=1
    Element Should Not Contain    ${GUI_ELEMENT_FileList}    api_private2    timeout=1
    Click Element    ${GUI_ELEMENT_FileListCloseButton}

Disable API Key Authentication
    Click Element    ${GUI_ELEMENT_File}
    Element Should Be Enabled    ${GUI_ELEMENT_APIkey}
    Click Element    ${GUI_ELEMENT_APIkey}
    Element Should Be Enabled    ${GUI_ELEMEMT_APIkeyClearButton}
    Click Element    ${GUI_ELEMEMT_APIkeyClearButton}
    Element Should Be Enabled    ${GUI_ELEMEMT_APIkeyApplyButton}
    Click Element    ${GUI_ELEMEMT_APIkeyApplyButton}
    Wait Until Element Contains    ${GUI_ELEMENT_ViewerInit}    No file loaded    timeout=1
    Click Element    ${GUI_ELEMENT_File}
    Click Element    ${GUI_ELEMENT_OpenImage}
    Wait Until Element Contains    ${GUI_ELEMENT_FileList}    public    timeout=1
    Element Should Not Contain    ${GUI_ELEMENT_FileList}    api_private1    timeout=1

Enable Authentication With Unknown API Key
    Click Element    ${GUI_ELEMENT_File}
    Element Should Be Enabled    ${GUI_ELEMENT_APIkey}
    Click Element    ${GUI_ELEMENT_APIkey}
    Clear Element Text    ${GUI_ELEMENT_APIkeyEntry}
    Input Text    ${GUI_ELEMENT_APIkeyEntry}    1234
    Element Should Be Enabled    ${GUI_ELEMEMT_APIkeyApplyButton}
    Click Element    ${GUI_ELEMEMT_APIkeyApplyButton}
    Wait Until Element Contains    ${GUI_ELEMENT_ViewerInit}    No file loaded    timeout=1
    Click Element    ${GUI_ELEMENT_File}
    Click Element    ${GUI_ELEMENT_OpenImage}
    Wait Until Element Contains    ${GUI_ELEMENT_FileList}    public    timeout=1
    Element Should Not Contain    ${GUI_ELEMENT_FileList}    api_private1    timeout=1
    Click Element    ${GUI_ELEMENT_FileListCloseButton}

Initialize CARTA For Testing
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Set Window Position    30    30
    Set Window Size    ${WINDOW_SIZE_X}    ${WINDOW_SIZE_Y}
    Reload Page
    Set Selenium Speed    ${DELAY}
    Element Should Be Visible    ${GUI_ELEMENT_File}
    Wait Until Element Contains    ${GUI_ELEMENT_ViewerInit}    No file loaded    timeout=1
    Element Should Be Enabled    ${GUI_ELEMENT_File}
    
Initialize CARTA With File Browser For Testing
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Set Window Position    30    30
    Set Window Size    ${WINDOW_SIZE_X}    ${WINDOW_SIZE_Y}
    Reload Page
    Set Selenium Speed    ${DELAY}
    Wait Until Element Contains    ${GUI_ELEMENT_ViewerInit}    No file loaded    timeout=1
    Element Should Be Enabled    ${GUI_ELEMENT_File}
    Click Element    ${GUI_ELEMENT_File}
    Click Element    ${GUI_ELEMENT_OpenImage}
    Wait Until Element Contains    ${GUI_ELEMENT_FileList}    public    timeout=1
    Click Element    ${GUI_ELEMENT_public_Folder}
    Wait Until Element Contains    ${GUI_ELEMENT_FileList}    set_QA    timeout=1

Initialize CARTA With An Image For Testing
    [arguments]    ${testImage}    ${renderingTimeout}
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Set Window Position    30    30
    Set Window Size    ${WINDOW_SIZE_X}    ${WINDOW_SIZE_Y}
    Reload Page
    Set Selenium Speed    ${DELAY}
    Wait Until Element Contains    ${GUI_ELEMENT_ViewerInit}    No file loaded    timeout=1
    Element Should Be Enabled    ${GUI_ELEMENT_File}
    Click Element    ${GUI_ELEMENT_File}
    Click Element    ${GUI_ELEMENT_OpenImage}
    Wait Until Element Contains    ${GUI_ELEMENT_FileList}    public    timeout=1
    Click Element    ${GUI_ELEMENT_public_Folder}
    Wait Until Element Contains    ${GUI_ELEMENT_FileList}    set_QA    timeout=1
    Click Element    ${GUI_ELEMENT_setQA_Folder}
    Wait Until Element Contains    ${GUI_ELEMENT_FileList}    ${testImage}    timeout=2
    Mouse Over    ${GUI_ELEMENT_FileList}
    Execute Javascript    window.scrollTo(0, -500)     
    Click Element    xpath://*[contains(text(), "${testImage}")]
    Wait Until Element Is Visible    ${GUI_ELEMENT_FileInfoWindow}    timeout=1
    Click Element    ${GUI_ELEMENT_LoadImageButton}
    Wait Until Element Is Visible    ${GUI_ELEMENT_ImageViewerCanvas}    timeout=30
    Sleep    ${renderingTimeout}
    Mouse Over    ${GUI_ELEMENT_ImageViewerCanvas}
    Wait Until Element Contains    ${GUI_ELEMENT_CursorInfoBar}    Value    timeout=1


