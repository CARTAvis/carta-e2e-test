*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary
Library           Process

*** Variables ***
${SERVER}         octopus:2000/?socketUrl=ws://octopus:3000
${BROWSER}        Chrome
${DELAY}          0
${LOGIN URL}      http://${SERVER}/
${TITLE}          CARTA v1.3


${SERVER_STATUS_ICON}    xpath://*[@id="root"]/div/div[1]/span[6]/span/span

${FILE_LIST}    xpath://*[@id="root"]/div/div[3]/div[1]/div/div[2]/div/div[3]/div/div[1]/table
${QA_FOLDER}    xpath://*[contains(text(), "set_QA_e2e")]
${FILE_INFO_TAB}    xpath://*[@id="root"]/div/div[3]/div[1]/div/div[2]/div/div[3]/div/div[2]/div/pre
${CURSOR_INFO_OVERLAY}    xpath://*[@id="root"]/div/div[10]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div[3]
${RASTER_CANVAS}    xpath://*[@id="raster-canvas"]
${LOAD_IMAGE_BUTTON}    xpath://*[contains(text(), "Load")]
${CLOSE_FILE_BROWSER_BUTTON}    xpath://*[contains(text(), "Close")]

# widget bar
${REGION_LIST_WIDGET_BUTTON}    xpath://*[@id="regionListButton"]
${LOG_WIDGET_BUTTON}    xpath://*[@id="logButton"]
${SPATIAL_PROFILER_WIDGET_BUTTON}    xpath://*[@id="spatialProfilerButton"]
${SPECTRAL_PROFILER_WIDGET_BUTTON}    xpath://*[@id="spectralProfilerButton"]
${STATISTICS_WIDGET_BUTTON}    xpath://*[@id="statsButton"]
${HISTOGRAM_WIDGET_BUTTON}    xpath://*[@id="histogramButton"]
${ANIMATOR_WIDGET_BUTTON}    xpath://*[@id="animatorButton"]
${RENDER_CONFIG_WIDGET_BUTTON}    xpath://*[@id="renderConfigButton"]
${STOKES_ANALYSIS_WIDGET_BUTTON}    xpath://*[@id="stokesAnalysisButton"]
${LAYER_LIST_WIDGET_BUTTON}    xpath://*[@id="layerListButton"]   

# dialog bar
${FILE_INFO_DIALOG_BUTTON}    xpath://*[@id="root"]/div/div[1]/div[2]/span[1]/span/button
${PREFERENCE_DIALOG_BUTTON}    xpath://*[@id="root"]/div/div[1]/div[2]/span[2]/span/button
${OVERLAY_SETTINGS_DIALOG_BUTTON}    xpath://*[@id="root"]/div/div[1]/div[2]/span[3]/span/button
${CONTOUR_DIALOG_BUTTON}    xpath://*[@id="root"]/div/div[1]/div[2]/span[4]/span/button

# menu bar
${FILE_MENU}    xpath://*[@id="root"]/div/div[1]/span[1]/span/ul/li/a
${FILE_MENU_OPEN_IMAGE}    xpath://*[contains(text(), "Open image")]
${FILE_MENU_APPEND_IMAGE}    xpath://*[contains(text(), "Append image")]
${FILE_MENU_CLOSE_IMAGE}    xpath://*[contains(text(), "Close image")]
${FILE_MENU_IMPORT_REGIONS}    xpath://*[contains(text(), "Import regions")]
${FILE_MENU_EXPORT_REGIONS}    xpath://*[contains(text(), "Export regions")]
${FILE_MENU_EXPORT_IMAGE}    xpath://*[contains(text(), "Export image")]
${FILE_MENU_PREFERENCES}    xpath://*[contains(text(), "Preferences")]

${VIEW_MENU}    xpath://*[@id="root"]/div/div[1]/span[2]/span/ul/li/a
${VIEW_MENU_INTERFACE}    xpath://*[contains(text(), "Interface")]
${VIEW_MENU_INTERFACE_LIGHT}    xpath://*[contains(text(), "Light")]
${VIEW_MENU_INTERFACE_DARK}    xpath://*[contains(text(), "Dark")]
${VIEW_MENU_OVERLAY}    xpath://*[contains(text(), "Overlay")]
${VIEW_MENU_OVERLAY_CUSTOMIZE}    xpath://*[contains(text(), "Customize...")]
${VIEW_MENU_FILEINFO}    xpath://*[contains(text(), "File info")]
${VIEW_MENU_CONTOURS}    xpath://*[contains(text(), "Contours")]

${LAYOUT_MENU}    xpath://*[@id="root"]/div/div[1]/span[3]/span/ul/li/a
${LAYOUT_MENU_LAYOUTS}    xpath://*[contains(text(), "Layouts")]
${LAYOUT_MENU_LAYOUTS_EXISTING_LAYOUTS}    xpath://*[contains(text(), "Existing Layouts")]
${LAYOUT_MENU_LAYOUTS_EXISTING_LAYOUTS_PRESETS}    xpath://*[contains(text(), "Presets")]
${LAYOUT_MENU_LAYOUTS_EXISTING_LAYOUTS_PRESETS_DEFAULT}    xpath://*[contains(text(), "Default")]
${LAYOUT_MENU_LAYOUTS_EXISTING_LAYOUTS_PRESETS_CUBEVIEW}    xpath://*[contains(text(), "Cube View")]
${LAYOUT_MENU_LAYOUTS_EXISTING_LAYOUTS_PRESETS_CUBEANALYSIS}    xpath://*[contains(text(), "Cube Analysis")]
${LAYOUT_MENU_LAYOUTS_EXISTING_LAYOUTS_PRESETS_CONTINUUMANALYSIS}    xpath://*[contains(text(), "Continuum Analysis")]
${LAYOUT_MENU_LAYOUTS_SAVE_LAYOUT}    xpath://*[contains(text(), "Save Layout")]
${LAYOUT_MENU_LAYOUTS_DELETE_LAYOUT}    xpath://*[contains(text(), "Delete Layout")]
${LAYOUT_MENU_INFOPANELS}    xpath://*[contains(text(), "Info Panels")]
${LAYOUT_MENU_INFOPANELS_REGIONLIST}    xpath://*[contains(text(), "Region List")]
${LAYOUT_MENU_INFOPANELS_PROGRAMLOG}    xpath://*[contains(text(), "Program Log")]
${LAYOUT_MENU_PROFILES}    xpath://*[contains(text(), "Profiles")]
${LAYOUT_MENU_PROFILES_SPATIALPROFILER}    xpath://*[contains(text(), "Spatial Profiler")]
${LAYOUT_MENU_PROFILES_SPECTRALPROFILER}    xpath://*[contains(text(), "Spectral Profiler")]
${LAYOUT_MENU_STATISTICS}    xpath://*[contains(text(), "Statistics")]
${LAYOUT_MENU_HISTOGRAM}    xpath://*[contains(text(), "Histogram")]
${LAYOUT_MENU_ANIMATOR}    xpath://*[contains(text(), "Animator")]
${LAYOUT_MENU_RENDERCONFIG}    xpath://*[contains(text(), "Render Config")]
${LAYOUT_MENU_STOKESANALYSIS}    xpath://*[contains(text(), "Stokes Analysis")]

${HELP_MENU}    xpath://*[@id="root"]/div/div[1]/span[4]/span/ul/li/a
${HELP_MENU_ONLINEMANUAL}    xpath://*[contains(text(), "Online Manual")]
${HELP_MENU_CONTROLSANDSHORTCUTS}    xpath://*[contains(text(), "Controls and Shortcuts")]
${HELP_MENU_ABOUT}    xpath://*[contains(text(), "About")]


# old...
${BASE_IMAGE_FOLDER}    xpath://*[contains(text(), "carta_image_pool")]
${LARGE_TEST_IMAGE}    xpath://*[contains(text(), "h_m51_b_s05_drz_sci.fits")]
${FILE_INFO}    xpath://*[@id="root"]/div/div[3]/div[1]/div/div[2]/div/div[3]/div/div[2]/div/pre
${LOAD_IMAGE_BUTTON}    xpath://*[contains(text(), "Load")]
${PROGRESS_CLOUD}    xpath://*[@id="root"]/div/div[1]/span[5]/span/span

*** Keywords ***
Open Browser To CARTA
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Reload Page
    Set Selenium Speed    ${DELAY}
    Title Should Be    ${TITLE}

Load Image
    Click Element    ${BASE_IMAGE_FOLDER}
    Wait Until Page Contains Element    ${LARGE_TEST_IMAGE}    timeout=2
    Click Element    ${LARGE_TEST_IMAGE}
    Wait Until Element Contains    ${FILE_INFO}    Name
    Wait Until Element Is Enabled    ${LOAD_IMAGE_BUTTON}    timeout=2
    Click Element    ${LOAD_IMAGE_BUTTON}
    Wait Until Element Is Visible    ${PROGRESS_CLOUD}    timeout=10
    Wait Until Element Is Not Visible    ${PROGRESS_CLOUD}    timeout=10


Go To E2E QA Folder
    Wait Until Page Contains    No file selected.
    Table Should Contain    ${FILE_LIST}    set_QA_e2e
    Scroll Element Into View    ${QA_FOLDER}
    Click Element    ${QA_FOLDER}
    Wait Until Page Contains    No file selected.

Run psrecord
    Start Process    psrecord $(pgrep carta_backend) --interval 0.05 --plot psrecord_output.png    shell=yes    alias=psrecord
    Process Should Be Running    handle=psrecord
        
    
Terminate psrecord
    Send Signal To Process    SIGINT    handle=psrecord
