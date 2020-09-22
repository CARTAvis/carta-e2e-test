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
    
    # check menu bar
    Mouse Over    ${FILE_MENU}
    Element Should Contain    ${FILE_MENU}    File
    Mouse Over    ${VIEW_MENU}
    Element Should Contain    ${VIEW_MENU}    View
    Mouse Over    ${WIDGETS_MENU}
    Element Should Contain    ${WIDGETS_MENU}    Widgets
    Mouse Over    ${HELP_MENU}
    Element Should Contain    ${HELP_MENU}    Help
    
    # check region bar
    Mouse Over    ${POINT_REGION_BUTTON}
    Page Should Contain    Point
    Mouse Over    ${RECTANGLE_REGION_BUTTON}
    Page Should Contain    Rectangle
    Mouse Over    ${ELLIPSE_REGION_BUTTON}
    Page Should Contain    Ellipse
    Mouse Over    ${POLYGON_REGION_BUTTON}
    Page Should Contain    Polygon

    # check widget bar
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
    Mouse Over    ${IMAGE_LIST_WIDGET_BUTTON}
    Page Should Contain    Image List Widget
    Mouse Over    ${CATALOG_WIDGET_BUTTON}
    Page Should Contain    Catalog Widget
    Mouse Over    ${SPECTRAL_LINE_QUERY_BUTTON}
    Page Should Contain    Spectral Line Query Widget

    # check dialog bar
    Mouse Over    ${FILE_HEADER_DIALOG_BUTTON}
    Page Should Contain    File Header
    Mouse Over    ${PREFERENCES_DIALOG_BUTTON} 
    Page Should Contain    Preferences
    Mouse Over    ${CONTOURS_DIALOG_BUTTON}
    Page Should Contain    Contours

    # check status icons
    Element Should Not Be Visible    ${PROGRESS_CLOUD}
    Mouse Over    ${SERVER_STATUS_ICON}
    Page Should Contain    Connected to server
    
    # check menus
    Click Element    ${FILE_MENU}
    Element Should Contain    ${FILE_MENU_OPEN_IMAGE}    Open image
    Element Should Contain    ${FILE_MENU_APPEND_IMAGE}    Append image
    Element Should Contain    ${FILE_MENU_SAVE_IMAGE}    Save image
    Element Should Contain    ${FILE_MENU_CLOSE_IMAGE}    Close image
    Element Should Contain    ${FILE_MENU_IMPORT_REGIONS}    Import regions
    Element Should Contain    ${FILE_MENU_EXPORT_REGIONS}    Export regions
    Element Should Contain    ${FILE_MENU_IMPORT_CATALOG}    Import catalog
    Element Should Contain    ${FILE_MENU_EXPORT_IMAGE}    Export image
    Element Should Contain    ${FILE_MENU_PREFERENCES}    Preferences
    Click Element    ${VIEW_MENU}
    Page Should Contain Element    ${VIEW_MENU_THEME}
    Mouse Over    ${VIEW_MENU_THEME}
    Page Should Contain Element    ${VIEW_MENU_THEME_AUTOMATIC}
    Page Should Contain Element    ${VIEW_MENU_THEME_LIGHT}
    Page Should Contain Element    ${VIEW_MENU_THEME_DARK}
    Page Should Contain Element    ${VIEW_MENU_LAYOUTS}
    Mouse Over    ${VIEW_MENU_LAYOUTS}
    Page Should Contain Element    ${VIEW_MENU_LAYOUTS_EXISTING_LAYOUTS}
    Page Should Contain Element    ${VIEW_MENU_LAYOUTS_SAVE_LAYOUT}
    Page Should Contain Element    ${VIEW_MENU_LAYOUTS_DELETE_LAYOUT}
    Mouse Over    ${VIEW_MENU_LAYOUTS_EXISTING_LAYOUTS}
    Page Should Contain    Default
    Page Should Contain    Cube View
    Page Should Contain    Cube Analysis
    Page Should Contain    Continuum Analysis
    Page Should Contain Element    ${VIEW_MENU_FILEHEADER}
    Page Should Contain Element    ${VIEW_MENU_CONTOURS}
    Click Element    ${WIDGETS_MENU}
    Page Should Contain Element    ${WIDGETS_MENU_INFO_PANELS}
    Mouse Over    ${WIDGETS_MENU_INFO_PANELS}
    Page Should Contain    Region List
    Page Should Contain    Image List
    Page Should Contain    Program Log
    Page Should Contain Element    ${WIDGETS_MENU_PROFILES}
    Mouse Over    ${WIDGETS_MENU_PROFILES}
    Page Should Contain    Spatial Profiler
    Page Should Contain    Spectral Profiler
    Page Should Contain Element    ${WIDGETS_MENU_STATISTICS}
    Page Should Contain Element    ${WIDGETS_MENU_HISTOGRAM}
    Page Should Contain Element    ${WIDGETS_MENU_ANIMATOR}
    Page Should Contain Element    ${WIDGETS_MENU_RENDER_CONFIG}
    Page Should Contain Element    ${WIDGETS_MENU_STOKES_ANALYSIS}
    Page Should Contain Element    ${WIDGETS_MENU_CATALOG}
    Page Should Contain Element    ${WIDGETS_MENU_SPECTRAL_LINE_QUERY}
    Click Element    ${HELP_MENU}
    Page Should Contain Element    ${HELP_MENU_ONLINE_MANUAL}
    Page Should Contain Element    ${HELP_MENU_CONTROLS_AND_SHORTCUTS}
    Page Should Contain Element    ${HELP_MENU_DEBUG_EXECUTION}
    Page Should Contain Element    ${HELP_MENU_ABOUT}

    # check components in the default layout
    Click Element    ${HELP_MENU}
    Page Should Contain Element    ${DEFAULT_LAYOUT_IMAGE_VIEWER}
    Page Should Contain Element    ${DEFAULT_LAYOUT_RENDER_CONFIG}
    Page Should Contain Element    ${DEFAULT_LAYOUT_SPATIAL_PROFILER_X}
    Page Should Contain Element    ${DEFAULT_LAYOUT_SPATIAL_PROFILER_Y}
    Page Should Contain Element    ${DEFAULT_LAYOUT_IMAGE_LIST}
    Page Should Contain Element    ${DEFAULT_LAYOUT_ANIMATOR}
    Page Should Contain Element    ${DEFAULT_LAYOUT_REGION_LIST}

    # launch widgets
    Click Element    ${REGION_LIST_WIDGET_BUTTON}
    Element Should Contain    //*[@id="root"]/div/div[12]/div/div[1]/div[1]/div[1]    Region List
    Click Element    ${LOG_WIDGET_BUTTON}
    Element Should Contain    //*[@id="root"]/div/div[12]/div[2]/div[1]/div[1]/div[1]    Log
    Click Element    ${SPATIAL_PROFILER_WIDGET_BUTTON}
    Element Should Contain    //*[@id="root"]/div/div[12]/div[3]/div[1]/div[1]/div[1]    X Profile: Cursor
    Click Element    ${SPECTRAL_PROFILER_WIDGET_BUTTON}
    Element Should Contain    //*[@id="root"]/div/div[12]/div[4]/div[1]/div[1]/div[1]    Z Profile: Cursor
    Click Element    ${STATISTICS_WIDGET_BUTTON}
    Element Should Contain    //*[@id="root"]/div/div[12]/div[5]/div[1]/div[1]/div[1]    Statistics
    Click Element    ${HISTOGRAM_WIDGET_BUTTON}
    Element Should Contain    //*[@id="root"]/div/div[12]/div[6]/div[1]/div[1]/div[1]    Histogram
    Click Element    ${ANIMATOR_WIDGET_BUTTON}
    Element Should Contain    //*[@id="root"]/div/div[12]/div[7]/div[1]/div[1]/div[1]    Animator
    Click Element    ${RENDER_CONFIG_WIDGET_BUTTON}
    Element Should Contain    //*[@id="root"]/div/div[12]/div[8]/div[1]/div[1]/div[1]    Render Configuration
    Click Element    ${STOKES_ANALYSIS_WIDGET_BUTTON}
    Element Should Contain    //*[@id="root"]/div/div[12]/div[9]/div[1]/div[1]/div[1]    Stokes Analysis
    Click Element    ${IMAGE_LIST_WIDGET_BUTTON}
    Element Should Contain    //*[@id="root"]/div/div[12]/div[10]/div[1]/div[1]/div[1]    Image List
    Click Element    ${CATALOG_WIDGET_BUTTON}
    Element Should Contain    //*[@id="root"]/div/div[12]/div[11]/div[1]/div[1]/div[1]    Catalog
    Click Element    ${SPECTRAL_LINE_QUERY_BUTTON}
    Element Should Contain    //*[@id="root"]/div/div[12]/div[12]/div[1]/div[1]/div[1]    Spectral Line Query
    
    # launch dialogs
    Click Element    ${FILE_HEADER_DIALOG_BUTTON}
    Element Should Contain    //*[@id="root"]/div/div[8]/div[1]/div/div[2]/div/div[1]    File Header
    Click Element    //*[@id="root"]/div/div[8]/div[1]/div/div[2]/div/div[1]/button
    Click Element    ${PREFERENCES_DIALOG_BUTTON}
    Element Should Contain    //*[@id="root"]/div/div[5]/div[1]/div/div[2]/div/div[1]    Preferences
    Click Element    //*[@id="root"]/div/div[5]/div[1]/div/div[2]/div/div[1]/button
    Click Element    ${CONTOURS_DIALOG_BUTTON}
    Element Should Contain    //*[@id="root"]/div/div[7]/div[1]/div/div[2]/div/div[1]    Contour Configuration
    Click Element    //*[@id="root"]/div/div[7]/div[1]/div/div[2]/div/div[1]/button

    # check help menu and sub-menus
    Click Element    ${HELP_MENU}
    Click Element    ${HELP_MENU_CONTROLS_AND_SHORTCUTS}
    Element Should Contain    xpath:/html/body/div[30]/div/div[2]/div/div    Navigation
    Press Keys    xpath:/html/body/div[30]/div/div[2]/div/div    ESC
    Click Element    ${HELP_MENU}
    Click Element    ${HELP_MENU_DEBUG_EXECUTION}
    Element Should Contain    //*[@id="root"]/div/div[9]/div[1]/div/div[2]/div/div[1]    Execute a command
    Click Element    //*[@id="root"]/div/div[9]/div[1]/div/div[2]/div/div[1]/button
    Click Element    ${HELP_MENU}
    Click Element    ${HELP_MENU_ABOUT}
    Element Should Contain    //*[@id="root"]/div/div[3]/div[1]/div/div[2]/div/div[1]    About CARTA
    Element Should Contain    //*[@id="root"]/div/div[3]/div[1]/div/div[2]/div/div[2]    CARTA 1.4.0
    Click Element    //*[@id="root"]/div/div[3]/div[1]/div/div[2]/div/div[1]/button
    Click Element    ${HELP_MENU}
    Click Element    ${HELP_MENU_ONLINE_MANUAL}
    Switch Window    NEW
    Wait Until Page Contains    CARTA user manual for v1.4
    Switch Window    MAIN
    Sleep    1
    [Teardown]    Close Browser
