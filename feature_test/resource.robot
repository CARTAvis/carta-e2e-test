*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary
Library           Process
Library           OperatingSystem
Library           String

*** Variables ***
${SERVER}         octopus:2000/?socketUrl=ws://octopus:3000
${BROWSER}        Chrome
${DELAY}          0.05
${LOGIN URL}      http://${SERVER}/
${TITLE}          CARTA v1.4
${WINDOW_SIZE_X}    1280
${WINDOW_SIZE_Y}    800

${SERVER_STATUS_ICON}    xpath://*[@id="root"]/div/div[1]/span[6]/span/span
${PROGRESS_CLOUD}    xpath://*[@id="root"]/div/div[1]/span[5]/span/span

${FILE_LIST}    xpath://*[@id="root"]/div/div[3]/div[1]/div/div[2]/div/div[3]/div/div[1]/table
${QA_FOLDER}    xpath://*[contains(text(), "set_QA_e2e")]
${FILE_INFO_TAB}    xpath://*[@id="root"]/div/div[3]/div[1]/div/div[2]/div/div[3]/div/div[2]/div/pre
${CURSOR_INFO_OVERLAY}    xpath://*[@id="root"]/div/div[10]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div[3]
${RASTER_CANVAS}    xpath://*[@id="raster-canvas"]
${IMAGE_VIEWER_CONTAINER}    xpath://*[@id="root"]/div/div[10]/div[2]/div/div[1]/div[1]/div[2]/div/div/div
${IMAGE_VIEWER_RATIO_TAG}    xpath://*[@id="root"]/div/div[10]/div[2]/div/div[1]/div[1]/div[2]/div/div/div/div[7]

${LOAD_IMAGE_BUTTON}    xpath://*[contains(text(), "Load")]
${CLOSE_FILE_BROWSER_BUTTON}    xpath://*[contains(text(), "Close")]


# region bar
${POINT_REGION_BUTTON}    xpath://*[@id="root"]/div/div[1]/div[1]/span[1]
${RECTANGLE_REGION_BUTTON}    xpath://*[@id="root"]/div/div[1]/div[1]/span[2]
${ELLIPSE_REGION_BUTTON}    xpath://*[@id="root"]/div/div[1]/div[1]/span[3]
${POLYGON_REGION_BUTTON}    xpath://*[@id="root"]/div/div[1]/div[1]/span[4]


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
${IMAGE_LIST_WIDGET_BUTTON}    xpath://*[@id="layerListButton"]   
${CATALOG_WIDGET_BUTTON}    xpath://*[@id="catalogOverlayButton"]
${SPECTRAL_LINE_QUERY_BUTTON}    xpath://*[@id="spectralLineQueryButton"]


# dialog bar
${FILE_HEADER_DIALOG_BUTTON}    xpath://*[@id="root"]/div/div[1]/div[3]/span[1]/span/button
${PREFERENCES_DIALOG_BUTTON}    xpath://*[@id="root"]/div/div[1]/div[3]/span[2]/span/button
${CONTOURS_DIALOG_BUTTON}    xpath://*[@id="root"]/div/div[1]/div[3]/span[3]/span/button

# menu bar
${FILE_MENU}    xpath://*[@id="root"]/div/div[1]/span[1]/span/ul/li/a
${FILE_MENU_OPEN_IMAGE}    xpath:/html/body/div[26]/div/div/div/div/ul/li[1]
${FILE_MENU_APPEND_IMAGE}    xpath:/html/body/div[26]/div/div/div/div/ul/li[2]
${FILE_MENU_SAVE_IMAGE}    xpath:/html/body/div[26]/div/div/div/div/ul/li[3]
${FILE_MENU_CLOSE_IMAGE}    xpath:/html/body/div[26]/div/div/div/div/ul/li[4]
${FILE_MENU_IMPORT_REGIONS}    xpath:/html/body/div[26]/div/div/div/div/ul/li[6]
${FILE_MENU_EXPORT_REGIONS}    xpath:/html/body/div[26]/div/div/div/div/ul/li[7]
${FILE_MENU_IMPORT_CATALOG}    xpath:/html/body/div[26]/div/div/div/div/ul/li[9]
${FILE_MENU_EXPORT_IMAGE}    xpath:/html/body/div[26]/div/div/div/div/ul/li[11]
${FILE_MENU_PREFERENCES}    xpath:/html/body/div[26]/div/div/div/div/ul/li[12]


${VIEW_MENU}    xpath://*[@id="root"]/div/div[1]/span[2]/span/ul/li/a
${VIEW_MENU_THEME}    xpath:/html/body/div[27]/div/div/div/div/ul/li[1]
${VIEW_MENU_THEME_AUTOMATIC}    xpath://*[contains(text(), "Automatic")]
${VIEW_MENU_THEME_LIGHT}    xpath://*[contains(text(), "Light")]
${VIEW_MENU_THEME_DARK}    xpath://*[contains(text(), "Dark")]
${VIEW_MENU_LAYOUTS}    xpath:/html/body/div[27]/div/div/div/div/ul/li[2]
${VIEW_MENU_LAYOUTS_EXISTING_LAYOUTS}    xpath://*[contains(text(), "Existing Layouts")]
${VIEW_MENU_LAYOUTS_SAVE_LAYOUT}    xpath://*[contains(text(), "Save Layout")]
${VIEW_MENU_LAYOUTS_DELETE_LAYOUT}    xpath://*[contains(text(), "Delete Layout")] 
${VIEW_MENU_FILEHEADER}    xpath:/html/body/div[27]/div/div/div/div/ul/li[3]
${VIEW_MENU_CONTOURS}    xpath:/html/body/div[27]/div/div/div/div/ul/li[4]

${WIDGETS_MENU}    xpath://*[@id="root"]/div/div[1]/span[3]/span/ul/li/a
${WIDGETS_MENU_INFO_PANELS}    xpath:/html/body/div[28]/div/div/div/div/ul/li[1]
${WIDGETS_MENU_PROFILES}    xpath:/html/body/div[28]/div/div/div/div/ul/li[2]
${WIDGETS_MENU_STATISTICS}    xpath:/html/body/div[28]/div/div/div/div/ul/li[3]
${WIDGETS_MENU_HISTOGRAM}    xpath:/html/body/div[28]/div/div/div/div/ul/li[4]
${WIDGETS_MENU_ANIMATOR}    xpath:/html/body/div[28]/div/div/div/div/ul/li[5]
${WIDGETS_MENU_RENDER_CONFIG}    xpath:/html/body/div[28]/div/div/div/div/ul/li[6]
${WIDGETS_MENU_STOKES_ANALYSIS}    xpath:/html/body/div[28]/div/div/div/div/ul/li[7]
${WIDGETS_MENU_CATALOG}    xpath:/html/body/div[28]/div/div/div/div/ul/li[8]
${WIDGETS_MENU_SPECTRAL_LINE_QUERY}    xpath:/html/body/div[28]/div/div/div/div/ul/li[9]

${HELP_MENU}    xpath://*[@id="root"]/div/div[1]/span[4]/span/ul/li/a
${HELP_MENU_ONLINE_MANUAL}    xpath:/html/body/div[29]/div/div/div/div/ul/li[1]
${HELP_MENU_CONTROLS_AND_SHORTCUTS}    xpath:/html/body/div[29]/div/div/div/div/ul/li[2]
${HELP_MENU_DEBUG_EXECUTION}    xpath:/html/body/div[29]/div/div/div/div/ul/li[3]
${HELP_MENU_ABOUT}    xpath:/html/body/div[29]/div/div/div/div/ul/li[4]


${DEFAULT_LAYOUT_IMAGE_VIEWER}    xpath://*[@id="root"]/div/div[11]/div[2]/div/div[1]/div[1]/div[1]/ul[1]/li
${DEFAULT_LAYOUT_RENDER_CONFIG}    xpath://*[@id="root"]/div/div[11]/div[2]/div/div[1]/div[3]/div[1]/ul[1]/li
${DEFAULT_LAYOUT_SPATIAL_PROFILER_X}    xpath://*[@id="root"]/div/div[11]/div[2]/div/div[3]/div[1]/div[1]/ul[1]/li
${DEFAULT_LAYOUT_SPATIAL_PROFILER_Y}    xpath://*[@id="root"]/div/div[11]/div[2]/div/div[3]/div[3]/div[1]/ul[1]/li
${DEFAULT_LAYOUT_IMAGE_LIST}    xpath://*[@id="root"]/div/div[11]/div[2]/div/div[3]/div[5]/div[1]/ul[1]/li[1]
${DEFAULT_LAYOUT_ANIMATOR}    xpath://*[@id="root"]/div/div[11]/div[2]/div/div[3]/div[5]/div[1]/ul[1]/li[2]
${DEFAULT_LAYOUT_REGION_LIST}    xpath://*[@id="root"]/div/div[11]/div[2]/div/div[3]/div[5]/div[1]/ul[1]/li[3]



# layer list widget
${LAYER_LIST_WIDGET_TABLE}    xpath://*[@id="root"]/div/div[10]/div[2]/div/div[3]/div[5]/div[2]/div[1]/div/div/div[1]/div[1]/div[1]/div/div[2]






# image comparsion
${IMAGE_COMPARATOR_COMMAND}   /opt/local/bin/convert __REFERENCE__ __TEST__ -metric RMSE -compare -format  "%[distortion]" info:


*** Keywords ***
Open Browser To CARTA
    Open Browser    ${LOGIN URL}    ${BROWSER}
    #Maximize Browser Window
    Set Window Size    ${WINDOW_SIZE_X}    ${WINDOW_SIZE_Y}
    Reload Page
    Set Selenium Speed    ${DELAY}
    Title Should Be    ${TITLE}
    Wait Until Page Contains    No file selected.

Load Image
    Go To E2E QA Folder
    Wait Until Page Contains Element    ${LARGE_TEST_IMAGE}    timeout=2
    Click Element    ${LARGE_TEST_IMAGE}
    Wait Until Element Contains    ${FILE_INFO}    Name
    Wait Until Element Is Enabled    ${LOAD_IMAGE_BUTTON}    timeout=2
    Click Element    ${LOAD_IMAGE_BUTTON}
    Wait Until Element Is Visible    ${PROGRESS_CLOUD}    timeout=10
    Wait Until Element Is Not Visible    ${PROGRESS_CLOUD}    timeout=10
    Sleep    1

Go To E2E QA Folder
    Wait Until Page Contains    No file selected.
    Table Should Contain    ${FILE_LIST}    set_QA_e2e
    Scroll Element Into View    ${QA_FOLDER}
    Click Element    ${QA_FOLDER}
    Wait Until Page Contains    No file selected.
    Sleep    0.5


Launch File Browser For Appending Image
    Click Element    ${FILE_MENU}
    Click Element    ${FILE_MENU_APPEND_IMAGE}
    Wait Until Page Contains    No file selected.
    Sleep    0.5

Run psrecord
    Start Process    psrecord $(pgrep carta_backend) --interval 0.05 --plot psrecord_output.png    shell=yes    alias=psrecord
    Process Should Be Running    handle=psrecord
        
    
Terminate psrecord
    Send Signal To Process    SIGINT    handle=psrecord



Compare Images
   [Arguments]      ${Reference_Image_Path}    ${Test_Image_Path}    ${Allowed_Threshold}
   ${TEMP}=         Replace String     ${IMAGE_COMPARATOR_COMMAND}    __REFERENCE__     ${Reference_Image_Path}
   ${COMMAND}=      Replace String     ${TEMP}    __TEST__     ${Test_Image_Path}
   Log              Executing: ${COMMAND}
   ${RC}            ${OUTPUT}=     Run And Return Rc And Output     ${COMMAND}
   Log              Return Code: ${RC}
   Log              Return Output: ${OUTPUT}
   ${RESULT}        Evaluate    ${OUTPUT} < ${Allowed_Threshold}
   Should be True   ${RESULT}