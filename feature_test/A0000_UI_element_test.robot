*** Settings ***
Documentation     Check frontend UI element locator 
...
...               This test trys to verify frontend UI element locator  
...               to make sure locators are correctly set in 
...               resource.robot
Resource          resource.robot

*** Test Cases ***
UI Element Locators
    [Setup]    Open Browser To CARTA
    Sleep    1
    Click Element    ${CLOSE_FILE_BROWSER_BUTTON}
    
    Element Should Contain    ${FILE_MENU}    File
    Element Should Contain    ${VIEW_MENU}    View
    Element Should Contain    ${LAYOUT_MENU}    Layout
    Element Should Contain    ${HELP_MENU}    Help
    
    Mouse Over    ${REGION_LIST_WIDGET_BUTTON}
    Page Should Contain    Region List Widget
    Mouse Over    ${LOG_WIDGET_BUTTON}
    Page Should Contain    Log Widget
    Mouse Over    ${SPATIAL_PROFILER_WIDGET_BUTTON}
    Page Should Contain    Spatial Profiler
    Mouse Over    ${SPECTRAL_PROFILER_WIDGET_BUTTON}
    Page Should Contain    Spectral Profiler
    Mouse Over    ${STATISTICS_WIDGET_BUTTON}
    Page Should Contain    Statistics Widget
    Mouse Over    ${HISTOGRAM_WIDGET_BUTTON}
    Page Should Contain    Histogram Widget
    Mouse Over    ${ANIMATOR_WIDGET_BUTTON}
    Page Should Contain    Animator Widget
    Mouse Over    ${RENDER_CONFIG_WIDGET_BUTTON}
    Page Should Contain    Render Config Widget
    Mouse Over    ${STOKES_ANALYSIS_WIDGET_BUTTON}
    Page Should Contain    Stokes Analysis Widget
    Mouse Over    ${LAYER_LIST_WIDGET_BUTTON}
    Page Should Contain    Layer List Widget
    Mouse Over    ${FILE_INFO_DIALOG_BUTTON}
    Page Should Contain    File Info
    Mouse Over    ${PREFERENCE_DIALOG_BUTTON} 
    Page Should Contain    Preference
    Mouse Over    ${OVERLAY_SETTINGS_DIALOG_BUTTON}
    Page Should Contain    Overlay Settings
    Mouse Over    ${CONTOUR_DIALOG_BUTTON}
    Page Should Contain    Contours
    Element Should Not Be Visible    ${PROGRESS_CLOUD}
    Mouse Over    ${SERVER_STATUS_ICON}
    Page Should Contain    Connected to server
    
    Click Element    ${FILE_MENU}
    Page Should Contain Element    ${FILE_MENU_OPEN_IMAGE}
    Page Should Contain Element    ${FILE_MENU_APPEND_IMAGE}
    Page Should Contain Element    ${FILE_MENU_CLOSE_IMAGE}
    Page Should Contain Element    ${FILE_MENU_IMPORT_REGIONS}
    Page Should Contain Element    ${FILE_MENU_EXPORT_REGIONS}
    Page Should Contain Element    ${FILE_MENU_EXPORT_IMAGE}
    Page Should Contain Element    ${FILE_MENU_PREFERENCES}
    
    Click Element    ${VIEW_MENU}
    Page Should Contain Element    ${VIEW_MENU_INTERFACE}
    Page Should Contain Element    ${VIEW_MENU_OVERLAY}
    Page Should Contain Element    ${VIEW_MENU_FILEINFO}
    Page Should Contain Element    ${VIEW_MENU_CONTOURS}
    Mouse Over    ${VIEW_MENU_INTERFACE}
    Page Should Contain Element    ${VIEW_MENU_INTERFACE_LIGHT}
    Page Should Contain Element    ${VIEW_MENU_INTERFACE_DARK}
    Mouse Over    ${VIEW_MENU_OVERLAY}
    Page Should Contain Element    ${VIEW_MENU_OVERLAY_CUSTOMIZE}

    Click Element    ${LAYOUT_MENU}
    Page Should Contain Element    ${LAYOUT_MENU_LAYOUTS}
    Page Should Contain Element    ${LAYOUT_MENU_INFOPANELS}
    Page Should Contain Element    ${LAYOUT_MENU_PROFILES}
    Page Should Contain Element    ${LAYOUT_MENU_STATISTICS}
    Page Should Contain Element    ${LAYOUT_MENU_HISTOGRAM}
    Page Should Contain Element    ${LAYOUT_MENU_ANIMATOR}
    Page Should Contain Element    ${LAYOUT_MENU_RENDERCONFIG}
    Page Should Contain Element    ${LAYOUT_MENU_STOKESANALYSIS}
    Mouse Over    ${LAYOUT_MENU_LAYOUTS}
    Page Should Contain Element    ${LAYOUT_MENU_LAYOUTS_EXISTING_LAYOUTS}
    Page Should Contain Element    ${LAYOUT_MENU_LAYOUTS_SAVE_LAYOUT}
    Page Should Contain Element    ${LAYOUT_MENU_LAYOUTS_DELETE_LAYOUT}
    Mouse Over    ${LAYOUT_MENU_LAYOUTS_EXISTING_LAYOUTS}
    Page Should Contain Element    ${LAYOUT_MENU_LAYOUTS_EXISTING_LAYOUTS_PRESETS}
    Mouse Over    ${LAYOUT_MENU_LAYOUTS_EXISTING_LAYOUTS_PRESETS}
    Page Should Contain Element    ${LAYOUT_MENU_LAYOUTS_EXISTING_LAYOUTS_PRESETS_DEFAULT}
    Page Should Contain Element    ${LAYOUT_MENU_LAYOUTS_EXISTING_LAYOUTS_PRESETS_CUBEVIEW}
    Page Should Contain Element    ${LAYOUT_MENU_LAYOUTS_EXISTING_LAYOUTS_PRESETS_CUBEANALYSIS}
    Page Should Contain Element    ${LAYOUT_MENU_LAYOUTS_EXISTING_LAYOUTS_PRESETS_CONTINUUMANALYSIS}
    Mouse Over    ${LAYOUT_MENU_INFOPANELS}
    Page Should Contain Element    ${LAYOUT_MENU_INFOPANELS_REGIONLIST}
    Page Should Contain Element    ${LAYOUT_MENU_INFOPANELS_PROGRAMLOG}
    Mouse Over    ${LAYOUT_MENU_PROFILES}
    Page Should Contain Element    ${LAYOUT_MENU_PROFILES_SPATIALPROFILER}
    Page Should Contain Element    ${LAYOUT_MENU_PROFILES_SPECTRALPROFILER}

    Click Element    ${HELP_MENU}
    Page Should Contain Element    ${HELP_MENU_ONLINEMANUAL}
    Page Should Contain Element    ${HELP_MENU_CONTROLSANDSHORTCUTS}
    Page Should Contain Element    ${HELP_MENU_ABOUT}

    [Teardown]    Close Browser
