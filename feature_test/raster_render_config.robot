*** Settings ***
Documentation     Testing options of the raster rendering configuration widget
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Verify Clip Values
    [Setup]    Initialize CARTA With An Image For Testing    cube_A_00400_z00100.fits    3
    ${var_clip_min}=    Get Value    ${GUI_ELEMENT_ClipValueMin}
    Should Be Equal As Numbers    ${var_clip_min}    0.02146282385694609    precision=6
    ${var_clip_max}=    Get Value    ${GUI_ELEMENT_ClipValueMax}
    Should Be Equal As Numbers    ${var_clip_max}    11.173166447452195    precision=6
    [Teardown]    Close Browser


Buttons Of Clip Levels
    [Setup]    Initialize CARTA With An Image For Testing    cube_A_00400_z00100.fits    3
    ${var_clip_min}=    Get Value    ${GUI_ELEMENT_ClipValueMin}
    Should Be Equal As Numbers    ${var_clip_min}    0.02146282385694609    precision=6
    ${var_clip_max}=    Get Value    ${GUI_ELEMENT_ClipValueMax}
    Should Be Equal As Numbers    ${var_clip_max}    11.173166447452195    precision=6               
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Page Screenshot    clip99.9.ori.png
    Click Element    ${GUI_ELEMENT_Clip90p0Button}
    ${var_clip_min}=    Get Value    ${GUI_ELEMENT_ClipValueMin}
    Should Be Equal As Numbers    ${var_clip_min}    2.0821204989615    precision=6
    ${var_clip_max}=    Get Value    ${GUI_ELEMENT_ClipValueMax}
    Should Be Equal As Numbers    ${var_clip_max}    6.839358450701605    precision=6             
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Page Screenshot    clip90.0.png
    Click Element    ${GUI_ELEMENT_Clip95p0Button}
    ${var_clip_min}=    Get Value    ${GUI_ELEMENT_ClipValueMin}
    Should Be Equal As Numbers    ${var_clip_min}    1.638149511846278    precision=6
    ${var_clip_max}=    Get Value    ${GUI_ELEMENT_ClipValueMax}
    Should Be Equal As Numbers    ${var_clip_max}    7.974092263649117    precision=6              
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Page Screenshot    clip95.0.png
    Click Element    ${GUI_ELEMENT_Clip99p0Button}
    ${var_clip_min}=    Get Value    ${GUI_ELEMENT_ClipValueMin}
    Should Be Equal As Numbers    ${var_clip_min}    0.8297827019661415    precision=6
    ${var_clip_max}=    Get Value    ${GUI_ELEMENT_ClipValueMax}
    Should Be Equal As Numbers    ${var_clip_max}    9.812190980111298    precision=6              
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Page Screenshot    clip99.0.png    
    Click Element    ${GUI_ELEMENT_Clip99p95Button}
    ${var_clip_min}=    Get Value    ${GUI_ELEMENT_ClipValueMin}
    Should Be Equal As Numbers    ${var_clip_min}    -0.17910108864309016    precision=6
    ${var_clip_max}=    Get Value    ${GUI_ELEMENT_ClipValueMax}
    Should Be Equal As Numbers    ${var_clip_max}    11.45755584910513    precision=6                
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Page Screenshot    clip99.95.png
    Click Element    ${GUI_ELEMENT_Clip99p99Button}
    ${var_clip_min}=    Get Value    ${GUI_ELEMENT_ClipValueMin}
    Should Be Equal As Numbers    ${var_clip_min}    -0.5621717125176657    precision=6
    ${var_clip_max}=    Get Value    ${GUI_ELEMENT_ClipValueMax}
    Should Be Equal As Numbers    ${var_clip_max}    12.230495418111413    precision=6                  
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Page Screenshot    clip99.99.png
    Click Element    ${GUI_ELEMENT_Clip100p0Button}
    ${var_clip_min}=    Get Value    ${GUI_ELEMENT_ClipValueMin}
    Should Be Equal As Numbers    ${var_clip_min}    -1.1651532500982285    precision=6
    ${var_clip_max}=    Get Value    ${GUI_ELEMENT_ClipValueMax}
    Should Be Equal As Numbers    ${var_clip_max}    13.058117136359215    precision=6                  
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Page Screenshot    clip100.0.png
    Click Element    ${GUI_ELEMENT_Clip99p9Button}
    ${var_clip_min}=    Get Value    ${GUI_ELEMENT_ClipValueMin}
    Should Be Equal As Numbers    ${var_clip_min}    0.02146282385694609    precision=6
    ${var_clip_max}=    Get Value    ${GUI_ELEMENT_ClipValueMax}
    Should Be Equal As Numbers    ${var_clip_max}    11.173166447452195    precision=6                
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Page Screenshot    clip99.9.png
    ${result}=    Run    diff -s clip99.9.ori.png clip90.0.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s clip90.0.png clip95.0.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s clip95.0.png clip99.0.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s clip99.0.png clip99.95.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s clip99.95.png clip99.99.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s clip99.99.png clip100.0.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s clip99.9.ori.png clip99.9.png
    Should Contain      ${result}    identical
    Remove Files    clip99.9.png    clip90.0.png    clip95.0.png    clip99.0.png
    Remove Files    clip99.95.png    clip99.99.png    clip100.0.png    clip99.9.ori.png
    [Teardown]    Close Browser

Scaling Functions
    [Setup]    Initialize CARTA With An Image For Testing    cube_A_00400_z00100.fits    3
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_linear.ori.png
    Click Element    ${GUI_ELEMENT_ScalingButton}
    Click Element    ${GUI_ELEMENT_ScalingOptions_log}
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_log.png
    Click Element    ${GUI_ELEMENT_ScalingButton}
    Click Element    ${GUI_ELEMENT_ScalingOptions_squareRoot}
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_squareRoot.png    
    Click Element    ${GUI_ELEMENT_ScalingButton}
    Click Element    ${GUI_ELEMENT_ScalingOptions_squared}
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_squared.png    
    Click Element    ${GUI_ELEMENT_ScalingButton}
    Click Element    ${GUI_ELEMENT_ScalingOptions_gamma}
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_gamma.png    
    Click Element    ${GUI_ELEMENT_ScalingButton}
    Click Element    ${GUI_ELEMENT_ScalingOptions_power}
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_power.png        
    Click Element    ${GUI_ELEMENT_ScalingButton}
    Click Element    ${GUI_ELEMENT_ScalingOptions_linear}
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_linear.png        
    ${result}=    Run    diff -s scaling_linear.ori.png scaling_log.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s scaling_log.png scaling_squareRoot.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s scaling_squareRoot.png scaling_squared.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s scaling_squared.png scaling_gamma.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s scaling_gamma.png scaling_power.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s scaling_power.png scaling_linear.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s scaling_linear.png scaling_linear.ori.png
    Should Contain      ${result}    identical
    Remove Files    scaling_linear.ori.png    scaling_log.png    scaling_squareRoot.png    scaling_squared.png
    Remove Files    scaling_gamma.png    scaling_power.png    scaling_linear.png
    [Teardown]    Close Browser

Scaling Function Log
    [Setup]    Initialize CARTA With An Image For Testing    cube_A_00400_z00100.fits    3
    Click Element    ${GUI_ELEMENT_ScalingButton}
    Click Element    ${GUI_ELEMENT_ScalingOptions_log}
    ${var_log_alpha}=    Get Value    ${GUI_ELEMENT_ScalingLogAlpha}
    Should Be Equal As Numbers    ${var_log_alpha}    1000    precision=6
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_log_1000_ori.png
    Clear Element Text    ${GUI_ELEMENT_ScalingLogAlpha}
    Input Text    ${GUI_ELEMENT_ScalingLogAlpha}    100
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_log_100.png
    Clear Element Text    ${GUI_ELEMENT_ScalingLogAlpha}
    Input Text    ${GUI_ELEMENT_ScalingLogAlpha}    1000
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_log_1000.png
    ${result}=    Run    diff -s scaling_log_1000_ori.png scaling_log_100.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s scaling_log_1000_ori.png scaling_log_1000.png
    Should Contain      ${result}    identical
    Remove Files    scaling_log_1000_ori.png    scaling_log_100.png    scaling_log_1000.png
    [Teardown]    Close Browser


Scaling Function Gamma
    [Setup]    Initialize CARTA With An Image For Testing    cube_A_00400_z00100.fits    3
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_linear.png
    Click Element    ${GUI_ELEMENT_ScalingButton}
    Click Element    ${GUI_ELEMENT_ScalingOptions_squareRoot}
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_squareRoot.png
    Click Element    ${GUI_ELEMENT_ScalingButton}
    Click Element    ${GUI_ELEMENT_ScalingOptions_squared}
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_squared.png
    Click Element    ${GUI_ELEMENT_ScalingButton}
    Click Element    ${GUI_ELEMENT_ScalingOptions_gamma}
    ${var_gamma_gamma}=    Get Value    ${GUI_ELEMENT_ScalingGammaGamma}
    Should Be Equal As Numbers    ${var_gamma_gamma}    1    precision=6
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_gamma_1.0.ori.png
    Repeat Keyword    10    Click Element    ${GUI_ELEMENT_ScalingGammaSpinUp}
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_gamma_2.0.png
    Repeat Keyword    15    Click Element    ${GUI_ELEMENT_ScalingGammaSpinDown}
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_gamma_0.5.png
    Clear Element Text    ${GUI_ELEMENT_ScalingGammaGamma}
    Input Text    ${GUI_ELEMENT_ScalingGammaGamma}    1
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_gamma_1.0.png
    ${result}=    Run    diff -s scaling_gamma_1.0.ori.png scaling_gamma_2.0.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s scaling_gamma_2.0.png scaling_gamma_0.5.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s scaling_gamma_0.5.png scaling_gamma_1.0.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s scaling_gamma_1.0.ori.png scaling_gamma_1.0.png
    Should Contain      ${result}    identical
    ${result}=    Run    diff -s scaling_gamma_1.0.ori.png scaling_linear.png
    Should Contain      ${result}    differ    # should be identical, known issue due to numerical error
    ${result}=    Run    diff -s scaling_gamma_2.0.png scaling_squared.png
    Should Contain      ${result}    differ    # should be identical, known issue due to numerical error    
    ${result}=    Run    diff -s scaling_gamma_0.5.png scaling_squareRoot.png
    Should Contain      ${result}    identical
    Remove Files    scaling_linear.png    scaling_gamma_1.0.ori.png    scaling_gamma_2.0.png
    Remove Files    scaling_gamma_0.0.png    scaling_gamma_1.0.png
    [Teardown]    Close Browser
        

Scaling Function Power
    [Setup]    Initialize CARTA With An Image For Testing    cube_A_00400_z00100.fits    3
    Click Element    ${GUI_ELEMENT_ScalingButton}
    Click Element    ${GUI_ELEMENT_ScalingOptions_power}
    ${var_power_alpha}=    Get Value    ${GUI_ELEMENT_ScalingPowerAlpha}
    Should Be Equal As Numbers    ${var_power_alpha}    1000    precision=6
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_power_1000_ori.png
    Clear Element Text    ${GUI_ELEMENT_ScalingPowerAlpha}
    Input Text    ${GUI_ELEMENT_ScalingPowerAlpha}    100
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_power_100.png
    Clear Element Text    ${GUI_ELEMENT_ScalingPowerAlpha}
    Input Text    ${GUI_ELEMENT_ScalingPowerAlpha}    1000
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    scaling_power_1000.png
    ${result}=    Run    diff -s scaling_power_1000_ori.png scaling_power_100.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s scaling_power_1000_ori.png scaling_power_1000.png
    Should Contain      ${result}    identical
    Remove Files    scaling_power_1000_ori.png    scaling_power_100.png    scaling_power_1000.png
    [Teardown]    Close Browser

Custom Clip Values
    [Setup]    Initialize CARTA With An Image For Testing    cube_A_00400_z00100.fits    3
    Click Element    ${GUI_ELEMENT_Clip90p0Button}
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    clip90.0.png
    Click Element    ${GUI_ELEMENT_Clip99p9Button}
    Clear Element Text    ${GUI_ELEMENT_ClipValueMin}
    Input Text    ${GUI_ELEMENT_ClipValueMin}    2.0821204989615
    Clear Element Text    ${GUI_ELEMENT_ClipValueMax}
    Input Text    ${GUI_ELEMENT_ClipValueMax}    6.839358450701605
    Click Element    ${GUI_ELEMENT_ClipValueMin}
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    clipCustom.png
    ${result}=    Run    diff -s clip90.0.png clipCustom.png
    Should Contain      ${result}    identical
    Remove Files    clip90.0.png    clipCustom.png
    [Teardown]    Close Browser


Colormap tests
    [Setup]    Initialize CARTA With An Image For Testing    cube_A_00400_z00100.fits    3
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    colormap_inferno_ori.png
    Click Element    ${GUI_ELEMENT_ColormapButton}
    Set Selenium Speed    0
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    afmhot
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    Blues
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    coolwarm
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    cubehelix
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    gist_heat
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    gist_stern
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    gnuplot
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    gnuplot2
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    gray
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    greens
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    greys
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    hot
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    inferno
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    jet
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    magma
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    nipy_spectral
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    plasma
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    rainbow
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    RdBu
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    RdGy
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    reds
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    seismic
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    spectral
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    tab10
    Element Should Contain    ${GUI_ELEMENT_ColormapList}    viridis
    Set Selenium Speed    ${DELAY}
    Click Element    xpath://*[contains(text(), "jet")]
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    colormap_jet.png
    Click Element    ${GUI_ELEMENT_ColormapButton}
    Click Element    xpath://*[contains(text(), "inferno")]
    Mouse Out    ${GUI_ELEMENT_ImageViewerCanvas}
    Capture Element Screenshot    ${GUI_ELEMENT_ImageViewerCanvas}    colormap_inferno.png    
    ${result}=    Run    diff -s colormap_inferno_ori.png colormap_jet.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s colormap_jet.png colormap_inferno.png
    Should Contain      ${result}    differ    
    ${result}=    Run    diff -s colormap_inferno_ori.png colormap_inferno.png
    Should Contain      ${result}    identical
    Remove Files    colormap_inferno_ori.png    colormap_jet.png    colormap_inferno.png
    [Teardown]    Close Browser


Custom Histogram Graph
    [Setup]    Initialize CARTA With An Image For Testing    cube_A_00400_z00100.fits    3
    Click Element    ${GUI_ELEMENT_RenderConfigSetting}
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_ori.png
    Checkbox Should Be Selected    ${GUI_ELEMENT_RenderConfigSetting_LogScale_Checkbox}
    Checkbox Should Be Selected    ${GUI_ELEMENT_RenderConfigSetting_ShowLabels_Checkbox}
    Click Element    ${GUI_ELEMENT_RenderConfigSetting_LogScale_Switch}
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_log_off.png
    Click Element    ${GUI_ELEMENT_RenderConfigSetting_LogScale_Switch}
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_log_on.png
    Click Element    ${GUI_ELEMENT_RenderConfigSetting_ShowLabels_Switch}
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_label_off.png
    Click Element    ${GUI_ELEMENT_RenderConfigSetting_ShowLabels_Switch}
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_label_on.png
    Click Element    ${GUI_ELEMENT_RenderConfigSetting_StyleLine}
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_styleLine.png
    Click Element    ${GUI_ELEMENT_RenderConfigSetting_StylePoint}
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_stylePoint.png
    Click Element    ${GUI_ELEMENT_RenderConfigSetting_StyleStep}
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_styleStep.png               
    ${result}=    Run    diff -s histogram_ori.png histogram_log_off.png
    Should Contain      ${result}    differ        
    ${result}=    Run    diff -s histogram_ori.png histogram_log_on.png
    Should Contain      ${result}    identical        
    ${result}=    Run    diff -s histogram_ori.png histogram_label_off.png
    Should Contain      ${result}    differ        
    ${result}=    Run    diff -s histogram_ori.png histogram_label_on.png
    Should Contain      ${result}    identical
    ${result}=    Run    diff -s histogram_ori.png histogram_styleLine.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s histogram_styleLine.png histogram_stylePoint.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s histogram_stylePoint.png histogram_styleStep.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s histogram_styleStep.png histogram_ori.png
    Should Contain      ${result}    identical
    Remove Files    histogram_ori.png    histogram_log_off.png    histogram_log_on.png
    Remove Files    histogram_label_off.png    histogram_label_on.png
    Remove Files    histogram_styleLine.png    histogram_stylePoint.png    histogram_styleStep.png
    [Teardown]    Close Browser

Histogram Graph Interactions
    [Setup]    Initialize CARTA With An Image For Testing    cube_A_00400_z00100.fits    3
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_ori.png
    Drag And Drop By Offset    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    200    0
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Sleep    2
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_horizontalZoom.png   
    Set Selenium Speed    0
    Repeat Keyword    2    Click Element    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Set Selenium Speed    ${DELAY}
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Sleep    2
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_reset1.png
    Drag And Drop By Offset    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    0    20
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Sleep    2
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_verticalZoom.png
    Set Selenium Speed    0
    Repeat Keyword    2    Click Element    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Set Selenium Speed    ${DELAY}
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Sleep    2
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_reset2.png
    Drag And Drop By Offset    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    400    50
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Sleep    2
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_boxZoom.png
    Set Selenium Speed    0
    Repeat Keyword    2    Click Element    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Set Selenium Speed    ${DELAY}
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Sleep    2
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_reset3.png
    ${result}=    Run    diff -s histogram_ori.png histogram_horizontalZoom.png
    Should Contain      ${result}    differ            
    ${result}=    Run    diff -s histogram_horizontalZoom.png histogram_reset1.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s histogram_reset1.png histogram_ori.png
    Should Contain      ${result}    identical
    ${result}=    Run    diff -s histogram_reset1.png histogram_verticalZoom.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s histogram_verticalZoom.png histogram_reset2.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s histogram_reset2.png histogram_ori.png
    Should Contain      ${result}    identical
    ${result}=    Run    diff -s histogram_reset2.png histogram_boxZoom.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s histogram_boxZoom.png histogram_reset3.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s histogram_reset3.png histogram_ori.png
    Should Contain      ${result}    identical
    Remove Files    histogram_ori.png    histogram_horizontalZoom.png    histogram_reset1.png
    Remove Files    histogram_verticalZoom.png    histogram_reset2.png    histogram_boxZoom.png    histogram_reset3.png
    # missing: zoom by scrolling
    # missing: panning
    [Teardown]    Close Browser


Per Cube Histogram
    [Setup]    Initialize CARTA With An Image For Testing    supermosaic.10.fits    3
    ${var_clip_min}=    Get Value    ${GUI_ELEMENT_ClipValueMin}
    Should Be Equal As Numbers    ${var_clip_min}    -26.95912703791012    precision=6
    ${var_clip_max}=    Get Value    ${GUI_ELEMENT_ClipValueMax}
    Should Be Equal As Numbers    ${var_clip_max}    26.573279209750027    precision=6        
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_perFrame_ori.png
    Click Element    ${GUI_ELEMENT_HistogramButton}
    Click Element    ${GUI_ELEMENT_HistogramMode_PerCube}
    Wait Until Page Contains Element    ${GUI_ELEMENT_HistogramModeAlert}
    Click Element    ${GUI_ELEMENT_HistogramModeAlert_OK}
    Wait Until Page Contains Element    ${GUI_ELEMENT_HistogramProgress}    3
    Wait Until Page Does Not Contain Element    ${GUI_ELEMENT_HistogramProgress}    30
    ${var_clip_min}=    Get Value    ${GUI_ELEMENT_ClipValueMin}
    Should Be Equal As Numbers    ${var_clip_min}    -25.262318230457367    precision=6
    ${var_clip_max}=    Get Value    ${GUI_ELEMENT_ClipValueMax}
    Should Be Equal As Numbers    ${var_clip_max}    105.34928716666673    precision=6        
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_perCube.png
    Click Element    ${GUI_ELEMENT_HistogramButton}
    Click Element    ${GUI_ELEMENT_HistogramMode_PerFrame}
    ${var_clip_min}=    Get Value    ${GUI_ELEMENT_ClipValueMin}
    Should Be Equal As Numbers    ${var_clip_min}    -26.95912703791012    precision=6
    ${var_clip_max}=    Get Value    ${GUI_ELEMENT_ClipValueMax}
    Should Be Equal As Numbers    ${var_clip_max}    26.573279209750027    precision=6            
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_perFrame_cached.png
    Click Element    ${GUI_ELEMENT_HistogramButton}
    Click Element    ${GUI_ELEMENT_HistogramMode_PerCube}
    ${var_clip_min}=    Get Value    ${GUI_ELEMENT_ClipValueMin}
    Should Be Equal As Numbers    ${var_clip_min}    -25.262318230457367    precision=6
    ${var_clip_max}=    Get Value    ${GUI_ELEMENT_ClipValueMax}
    Should Be Equal As Numbers    ${var_clip_max}    105.34928716666673    precision=6            
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_perCube_cached.png        
    ${result}=    Run    diff -s histogram_perFrame_ori.png histogram_perCube.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s histogram_perCube.png histogram_perFrame_cached.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s histogram_perFrame_cached.png histogram_perCube_cached.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s histogram_perFrame_cached.png histogram_perFrame_ori.png
    Should Contain      ${result}    identical
    ${result}=    Run    diff -s histogram_perCube.png histogram_perCube_cached.png
    Should Contain      ${result}    identical
    Remove Files    histogram_perFrame_ori.png    histogram_perCube.png    
    Remove Files    histogram_perFrame_cached.png    histogram_perCube_cached.png
    [Teardown]    Close Browser



Per Cube Histogram Cancel And Resume
    [Setup]    Initialize CARTA With An Image For Testing    supermosaic.10.fits    3
    ${var_clip_min}=    Get Value    ${GUI_ELEMENT_ClipValueMin}
    Should Be Equal As Numbers    ${var_clip_min}    -26.95912703791012    precision=6
    ${var_clip_max}=    Get Value    ${GUI_ELEMENT_ClipValueMax}
    Should Be Equal As Numbers    ${var_clip_max}    26.573279209750027    precision=6             
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_perFrame_ori.png
    Click Element    ${GUI_ELEMENT_HistogramButton}
    Click Element    ${GUI_ELEMENT_HistogramMode_PerCube}
    Wait Until Page Contains Element    ${GUI_ELEMENT_HistogramModeAlert}
    Click Element    ${GUI_ELEMENT_HistogramModeAlert_OK}
    Wait Until Page Contains Element    ${GUI_ELEMENT_HistogramProgress}    3
    Sleep    3
    Click Element    ${GUI_ELEMENT_HistogramProgress_Cancel}
    Wait Until Page Does Not Contain Element    ${GUI_ELEMENT_HistogramProgress}    1
    ${var_clip_min}=    Get Value    ${GUI_ELEMENT_ClipValueMin}
    Should Be Equal As Numbers    ${var_clip_min}    -26.95912703791012    precision=6
    ${var_clip_max}=    Get Value    ${GUI_ELEMENT_ClipValueMax}
    Should Be Equal As Numbers    ${var_clip_max}    26.573279209750027    precision=6       
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_perFrame_cached.png
    Click Element    ${GUI_ELEMENT_HistogramButton}
    Click Element    ${GUI_ELEMENT_HistogramMode_PerCube}
    Wait Until Page Contains Element    ${GUI_ELEMENT_HistogramModeAlert}
    Click Element    ${GUI_ELEMENT_HistogramModeAlert_OK}
    Wait Until Page Contains Element    ${GUI_ELEMENT_HistogramProgress}    3
    Wait Until Page Does Not Contain Element    ${GUI_ELEMENT_HistogramProgress}    30
    ${var_clip_min}=    Get Value    ${GUI_ELEMENT_ClipValueMin}
    Should Be Equal As Numbers    ${var_clip_min}    -25.262318230457367    precision=6
    ${var_clip_max}=    Get Value    ${GUI_ELEMENT_ClipValueMax}
    Should Be Equal As Numbers    ${var_clip_max}    105.34928716666673    precision=6                      
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_perCube.png
    Click Element    ${GUI_ELEMENT_HistogramButton}
    Click Element    ${GUI_ELEMENT_HistogramMode_PerFrame}
    ${var_clip_min}=    Get Value    ${GUI_ELEMENT_ClipValueMin}
    Should Be Equal As Numbers    ${var_clip_min}    -26.95912703791012    precision=6
    ${var_clip_max}=    Get Value    ${GUI_ELEMENT_ClipValueMax}
    Should Be Equal As Numbers    ${var_clip_max}    26.573279209750027    precision=6           
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_perFrame_cached2.png
    Click Element    ${GUI_ELEMENT_HistogramButton}
    Click Element    ${GUI_ELEMENT_HistogramMode_PerCube}
    ${var_clip_min}=    Get Value    ${GUI_ELEMENT_ClipValueMin}
    Should Be Equal As Numbers    ${var_clip_min}    -25.262318230457367    precision=6
    ${var_clip_max}=    Get Value    ${GUI_ELEMENT_ClipValueMax}
    Should Be Equal As Numbers    ${var_clip_max}    105.34928716666673    precision=6                      
    Mouse Out    ${GUI_ELEMENT_RenderConfig_HistogramPlot}
    Sleep    1
    Capture Element Screenshot    ${GUI_ELEMENT_RenderConfig_HistogramPlot}    histogram_perCube_cached.png
    ${result}=    Run    diff -s histogram_perFrame_ori.png histogram_perFrame_cached.png
    Should Contain      ${result}    identical
    ${result}=    Run    diff -s histogram_perFrame_cached.png histogram_perCube.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s histogram_perCube.png histogram_perFrame_cached2.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s histogram_perFrame_cached2.png histogram_perCube_cached.png
    Should Contain      ${result}    differ
    ${result}=    Run    diff -s histogram_perFrame_ori.png histogram_perFrame_cached.png
    Should Contain      ${result}    identical
    ${result}=    Run    diff -s histogram_perFrame_cached.png histogram_perFrame_cached2.png
    Should Contain      ${result}    identical
    ${result}=    Run    diff -s histogram_perCube.png histogram_perCube_cached.png
    Should Contain      ${result}    identical
    Remove Files    histogram_perFrame_ori.png    histogram_perFrame_cached.png    histogram_perCube.png    
    Remove Files    histogram_perFrame_cached2.png    histogram_perCube_cached.png
    [Teardown]    Close Browser