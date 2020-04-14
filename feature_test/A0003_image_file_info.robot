*** Settings ***
Documentation     Check image info and header
...
...               This test trys to check if backend returns   
...               correct file info and header. 
Resource          resource.robot

*** Test Cases ***
FITS File info
    [Setup]    Open Browser To CARTA
    Sleep    1
    Go To E2E QA Folder
    Scroll Element Into View    xpath://*[contains(text(), "M17_SWex.fits")]
    Click Element    xpath://*[contains(text(), "M17_SWex.fits")]
    Wait Until Element Contains    ${FILE_INFO}    Name \= M17_SWex.fits
    Element Should Contain    ${FILE_INFO}    Shape \= [640, 800, 25, 1]
    Element Should Contain    ${FILE_INFO}    Number of channels \= 25
    Element Should Contain    ${FILE_INFO}    Number of stokes \= 1
    Element Should Contain    ${FILE_INFO}    Coordinate type \= Right Ascension, Declination
    Element Should Contain    ${FILE_INFO}    Projection \= SIN
    Element Should Contain    ${FILE_INFO}    Image reference pixels \= [321.0, 401.0]
    Element Should Contain    ${FILE_INFO}    Image reference coords \= [18:20:21.0000, -016.12.10.0000]
    Element Should Contain    ${FILE_INFO}    Image ref coords (deg) \= [275.088 deg, -16.2028 deg]
    Element Should Contain    ${FILE_INFO}    Celestial frame \= ICRS
    Element Should Contain    ${FILE_INFO}    Spectral frame \= LSRK
    Element Should Contain    ${FILE_INFO}    Velocity definition \= RADIO
    Element Should Contain    ${FILE_INFO}    Pixel unit \= Jy/beam
    Element Should Contain    ${FILE_INFO}    Pixel increment \= -0.400", 0.400"
    Element Should Contain    ${FILE_INFO}    Restoring beam \= 2.06105" X 1.49126", -74.6267 deg
    Click Element    xpath://*[contains(text(), "Header")]
    Wait Until Element Contains    ${FILE_INFO}    SIMPLE \= T / Standard FITS
    Element Should Contain    ${FILE_INFO}    BITPIX \= -32 / Floating point (32 bit)
    Element Should Contain    ${FILE_INFO}    NAXIS \= 4
    Element Should Contain    ${FILE_INFO}    NAXIS1 \= 640
    Element Should Contain    ${FILE_INFO}    NAXIS2 \= 800
    Element Should Contain    ${FILE_INFO}    NAXIS3 \= 25
    Element Should Contain    ${FILE_INFO}    NAXIS4 \= 1
    Element Should Contain    ${FILE_INFO}    BSCALE \= 1.000000000000E+00 / PHYSICAL = PIXEL*BSCALE + BZERO
    Element Should Contain    ${FILE_INFO}    BZERO \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    BMAJ \= 5.725136068132E-04
    Element Should Contain    ${FILE_INFO}    BMIN \= 4.142385721207E-04
    Element Should Contain    ${FILE_INFO}    BPA \= -7.462673187256E+01
    Element Should Contain    ${FILE_INFO}    BTYPE \= Intensity
    Element Should Contain    ${FILE_INFO}    OBJECT \= M17SW
    Element Should Contain    ${FILE_INFO}    BUNIT \= Jy/beam / Brightness (pixel) unit
    Element Should Contain    ${FILE_INFO}    RADESYS \= ICRS
    Element Should Contain    ${FILE_INFO}    LONPOLE \= 1.800000000000E+02
    Element Should Contain    ${FILE_INFO}    LATPOLE \= -1.620277777779E+01
    Element Should Contain    ${FILE_INFO}    PC1_1 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC2_1 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC3_1 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC4_1 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC1_2 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC2_2 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC3_2 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC4_2 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC1_3 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC2_3 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC3_3 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC4_3 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC1_4 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC2_4 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC3_4 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC4_4 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    CTYPE1 \= RA---SIN
    Element Should Contain    ${FILE_INFO}    CRVAL1 \= 2.750875000001E+02
    Element Should Contain    ${FILE_INFO}    CDELT1 \= -1.111111111111E-04
    Element Should Contain    ${FILE_INFO}    CRPIX1 \= 321.0
    Element Should Contain    ${FILE_INFO}    CUNIT1 \= deg
    Element Should Contain    ${FILE_INFO}    CTYPE2 \= DEC--SIN
    Element Should Contain    ${FILE_INFO}    CRVAL2 \= -1.620277777779E+01
    Element Should Contain    ${FILE_INFO}    CDELT2 \= 1.111111111111E-04
    Element Should Contain    ${FILE_INFO}    CRPIX2 \= 401.0
    Element Should Contain    ${FILE_INFO}    CUNIT2 \= deg
    Element Should Contain    ${FILE_INFO}    CTYPE3 \= FREQ
    Element Should Contain    ${FILE_INFO}    CRVAL3 \= 8.675139618840E+10
    Element Should Contain    ${FILE_INFO}    CDELT3 \= -2.442377011414E+05
    Element Should Contain    ${FILE_INFO}    CRPIX3 \= 1.0
    Element Should Contain    ${FILE_INFO}    CUNIT3 \= Hz
    Element Should Contain    ${FILE_INFO}    CTYPE4 \= STOKES
    Element Should Contain    ${FILE_INFO}    CRVAL4 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    CDELT4 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    CRPIX4 \= 1.0
    Element Should Contain    ${FILE_INFO}    CUNIT4 \=
    Element Should Contain    ${FILE_INFO}    PV2_1 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PV2_2 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    RESTFRQ \= 8.675429000000E+10 / Rest Frequency (Hz)
    Element Should Contain    ${FILE_INFO}    SPECSYS \= LSRK / Spectral reference frame
    Element Should Contain    ${FILE_INFO}    ALTRVAL \= 9.999999914171E+03
    Element Should Contain    ${FILE_INFO}    ALTRPIX \= 1.0
    Element Should Contain    ${FILE_INFO}    VELREF \= 257 / 1 LSR, 2 HEL, 3 OBS, +256 Radio
    Element Should Contain    ${FILE_INFO}    TELESCOP \= ALMA
    Element Should Contain    ${FILE_INFO}    OBSERVER \= sishii
    Element Should Contain    ${FILE_INFO}    DATE-OBS \= 2016-04-03T13:02:58.800000
    Element Should Contain    ${FILE_INFO}    TIMESYS \= UTC
    Element Should Contain    ${FILE_INFO}    OBSRA \= 2.750875000001E+02    
    Element Should Contain    ${FILE_INFO}    OBSDEC \= -1.620277777779E+01
    Element Should Contain    ${FILE_INFO}    OBSGEO-X \= 2.225142180269E+06
    Element Should Contain    ${FILE_INFO}    OBSGEO-Y \= -5.440307370349E+06
    Element Should Contain    ${FILE_INFO}    OBSGEO-Z \= -2.481029851874E+06
    [Teardown]    Close Browser


CASA File info
    [Setup]    Open Browser To CARTA
    Sleep    1
    Go To E2E QA Folder
    Scroll Element Into View    xpath://*[contains(text(), "M17_SWex.image")]
    Click Element    xpath://*[contains(text(), "M17_SWex.image")]
    Wait Until Element Contains    ${FILE_INFO}    Name \= M17_SWex.image
    Element Should Contain    ${FILE_INFO}    Shape \= [640, 800, 25, 1]
    Element Should Contain    ${FILE_INFO}    Number of channels \= 25
    Element Should Contain    ${FILE_INFO}    Number of stokes \= 1
    Element Should Contain    ${FILE_INFO}    Coordinate type \= Right Ascension, Declination
    Element Should Contain    ${FILE_INFO}    Projection \= SIN
    Element Should Contain    ${FILE_INFO}    Image reference pixels \= [321.0, 401.0]
    Element Should Contain    ${FILE_INFO}    Image reference coords \= [18:20:21.0000, -016.12.10.0000]
    Element Should Contain    ${FILE_INFO}    Image ref coords (deg) \= [275.088 deg, -16.2028 deg]
    Element Should Contain    ${FILE_INFO}    Celestial frame \= ICRS
    Element Should Contain    ${FILE_INFO}    Spectral frame \= LSRK
    Element Should Contain    ${FILE_INFO}    Velocity definition \= RADIO
    Element Should Contain    ${FILE_INFO}    Pixel unit \= Jy/beam
    Element Should Contain    ${FILE_INFO}    Pixel increment \= -0.400", 0.400"
    Element Should Contain    ${FILE_INFO}    Restoring beam \= 2.06105" X 1.49126", -74.6267 deg
    Click Element    xpath://*[contains(text(), "Header")]
    Wait Until Element Contains    ${FILE_INFO}    SIMPLE \= T / Standard FITS
    Element Should Contain    ${FILE_INFO}    BITPIX \= -32 / Floating point (32 bit)
    Element Should Contain    ${FILE_INFO}    NAXIS \= 4
    Element Should Contain    ${FILE_INFO}    NAXIS1 \= 640
    Element Should Contain    ${FILE_INFO}    NAXIS2 \= 800
    Element Should Contain    ${FILE_INFO}    NAXIS3 \= 25
    Element Should Contain    ${FILE_INFO}    NAXIS4 \= 1
    Element Should Contain    ${FILE_INFO}    BSCALE \= 1.000000000000E+00 / PHYSICAL = PIXEL*BSCALE + BZERO
    Element Should Contain    ${FILE_INFO}    BZERO \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    BMAJ \= 5.725136068132E-04
    Element Should Contain    ${FILE_INFO}    BMIN \= 4.142385721207E-04
    Element Should Contain    ${FILE_INFO}    BPA \= -7.462673187256E+01
    Element Should Contain    ${FILE_INFO}    BTYPE \= Intensity
    Element Should Contain    ${FILE_INFO}    OBJECT \= M17SW
    Element Should Contain    ${FILE_INFO}    BUNIT \= Jy/beam / Brightness (pixel) unit
    Element Should Contain    ${FILE_INFO}    RADESYS \= ICRS
    Element Should Contain    ${FILE_INFO}    LONPOLE \= 1.800000000000E+02
    Element Should Contain    ${FILE_INFO}    LATPOLE \= -1.620277777779E+01
    Element Should Contain    ${FILE_INFO}    PC1_1 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC2_1 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC3_1 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC4_1 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC1_2 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC2_2 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC3_2 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC4_2 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC1_3 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC2_3 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC3_3 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC4_3 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC1_4 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC2_4 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC3_4 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC4_4 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    CTYPE1 \= RA---SIN
    Element Should Contain    ${FILE_INFO}    CRVAL1 \= 2.750875000001E+02
    Element Should Contain    ${FILE_INFO}    CDELT1 \= -1.111111111111E-04
    Element Should Contain    ${FILE_INFO}    CRPIX1 \= 321.0
    Element Should Contain    ${FILE_INFO}    CUNIT1 \= deg
    Element Should Contain    ${FILE_INFO}    CTYPE2 \= DEC--SIN
    Element Should Contain    ${FILE_INFO}    CRVAL2 \= -1.620277777779E+01
    Element Should Contain    ${FILE_INFO}    CDELT2 \= 1.111111111111E-04
    Element Should Contain    ${FILE_INFO}    CRPIX2 \= 401.0
    Element Should Contain    ${FILE_INFO}    CUNIT2 \= deg
    Element Should Contain    ${FILE_INFO}    CTYPE3 \= FREQ
    Element Should Contain    ${FILE_INFO}    CRVAL3 \= 8.675139618840E+10
    Element Should Contain    ${FILE_INFO}    CDELT3 \= -2.442377011414E+05
    Element Should Contain    ${FILE_INFO}    CRPIX3 \= 1.0
    Element Should Contain    ${FILE_INFO}    CUNIT3 \= Hz
    Element Should Contain    ${FILE_INFO}    CTYPE4 \= STOKES
    Element Should Contain    ${FILE_INFO}    CRVAL4 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    CDELT4 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    CRPIX4 \= 1.0
    Element Should Contain    ${FILE_INFO}    CUNIT4 \=
    Element Should Contain    ${FILE_INFO}    PV2_1 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PV2_2 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    RESTFRQ \= 8.675429000000E+10 / Rest Frequency (Hz)
    Element Should Contain    ${FILE_INFO}    SPECSYS \= LSRK / Spectral reference frame
    Element Should Contain    ${FILE_INFO}    ALTRVAL \= 9.999999914171E+03
    Element Should Contain    ${FILE_INFO}    ALTRPIX \= 1.0
    Element Should Contain    ${FILE_INFO}    VELREF \= 257 / 1 LSR, 2 HEL, 3 OBS, +256 Radio
    Element Should Contain    ${FILE_INFO}    TELESCOP \= ALMA
    Element Should Contain    ${FILE_INFO}    OBSERVER \= sishii
    Element Should Contain    ${FILE_INFO}    DATE-OBS \= 2016-04-03T13:02:58.800000
    Element Should Contain    ${FILE_INFO}    TIMESYS \= UTC
    Element Should Contain    ${FILE_INFO}    OBSRA \= 2.750875000001E+02    
    Element Should Contain    ${FILE_INFO}    OBSDEC \= -1.620277777779E+01
    Element Should Contain    ${FILE_INFO}    OBSGEO-X \= 2.225142180269E+06
    Element Should Contain    ${FILE_INFO}    OBSGEO-Y \= -5.440307370349E+06
    Element Should Contain    ${FILE_INFO}    OBSGEO-Z \= -2.481029851874E+06
    [Teardown]    Close Browser


MIRIAD File info
    [Setup]    Open Browser To CARTA
    Sleep    1
    Go To E2E QA Folder
    Scroll Element Into View    xpath://*[contains(text(), "M17_SWex.miriad")]
    Click Element    xpath://*[contains(text(), "M17_SWex.miriad")]
    Wait Until Element Contains    ${FILE_INFO}    Name \= M17_SWex.miriad
    Element Should Contain    ${FILE_INFO}    Shape \= [640, 800, 25, 1]
    Element Should Contain    ${FILE_INFO}    Number of channels \= 25
    Element Should Contain    ${FILE_INFO}    Number of stokes \= 1
    Element Should Contain    ${FILE_INFO}    Coordinate type \= Right Ascension, Declination
    Element Should Contain    ${FILE_INFO}    Projection \= SIN
    Element Should Contain    ${FILE_INFO}    Image reference pixels \= [321.0, 401.0]
    Element Should Contain    ${FILE_INFO}    Image reference coords \= [18:20:21.0000, -016.12.10.0000]
    Element Should Contain    ${FILE_INFO}    Image ref coords (deg) \= [275.088 deg, -16.2028 deg]
    Element Should Contain    ${FILE_INFO}    Celestial frame \= FK5, J2000
    Element Should Contain    ${FILE_INFO}    Spectral frame \= BARY
    Element Should Contain    ${FILE_INFO}    Velocity definition \= RADIO
    Element Should Contain    ${FILE_INFO}    Pixel unit \= Jy/beam
    Element Should Contain    ${FILE_INFO}    Pixel increment \= -0.400", 0.400"
    Element Should Contain    ${FILE_INFO}    Restoring beam \= 2.06105" X 1.49126", -74.6267 deg
    Click Element    xpath://*[contains(text(), "Header")]
    Wait Until Element Contains    ${FILE_INFO}    SIMPLE \= T / Standard FITS
    Element Should Contain    ${FILE_INFO}    BITPIX \= -32 / Floating point (32 bit)
    Element Should Contain    ${FILE_INFO}    NAXIS \= 4
    Element Should Contain    ${FILE_INFO}    NAXIS1 \= 640
    Element Should Contain    ${FILE_INFO}    NAXIS2 \= 800
    Element Should Contain    ${FILE_INFO}    NAXIS3 \= 25
    Element Should Contain    ${FILE_INFO}    NAXIS4 \= 1
    Element Should Contain    ${FILE_INFO}    BSCALE \= 1.000000000000E+00 / PHYSICAL = PIXEL*BSCALE + BZERO
    Element Should Contain    ${FILE_INFO}    BZERO \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    BMAJ \= 5.725135932445E-04
    Element Should Contain    ${FILE_INFO}    BMIN \= 4.142385813538E-04
    Element Should Contain    ${FILE_INFO}    BPA \= -7.462673187256E+01
    Element Should Contain    ${FILE_INFO}    BTYPE \= Intensity
    Element Should Contain    ${FILE_INFO}    OBJECT \=
    Element Should Contain    ${FILE_INFO}    BUNIT \= Jy/beam / Brightness (pixel) unit
    Element Should Contain    ${FILE_INFO}    EQUINOX \= 2000.0
    Element Should Contain    ${FILE_INFO}    RADESYS \= FK5
    Element Should Contain    ${FILE_INFO}    LONPOLE \= 1.800000000000E+02
    Element Should Contain    ${FILE_INFO}    LATPOLE \= -1.620277777779E+01
    Element Should Contain    ${FILE_INFO}    PC1_1 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC2_1 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC3_1 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC4_1 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC1_2 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC2_2 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC3_2 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC4_2 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC1_3 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC2_3 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC3_3 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC4_3 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC1_4 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC2_4 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC3_4 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC4_4 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    CTYPE1 \= RA---SIN
    Element Should Contain    ${FILE_INFO}    CRVAL1 \= 2.750875000001E+02
    Element Should Contain    ${FILE_INFO}    CDELT1 \= -1.111111111111E-04
    Element Should Contain    ${FILE_INFO}    CRPIX1 \= 321.0
    Element Should Contain    ${FILE_INFO}    CUNIT1 \= deg
    Element Should Contain    ${FILE_INFO}    CTYPE2 \= DEC--SIN
    Element Should Contain    ${FILE_INFO}    CRVAL2 \= -1.620277777779E+01
    Element Should Contain    ${FILE_INFO}    CDELT2 \= 1.111111111111E-04
    Element Should Contain    ${FILE_INFO}    CRPIX2 \= 401.0
    Element Should Contain    ${FILE_INFO}    CUNIT2 \= deg
    Element Should Contain    ${FILE_INFO}    CTYPE3 \= FREQ
    Element Should Contain    ${FILE_INFO}    CRVAL3 \= 8.675139618840E+10
    Element Should Contain    ${FILE_INFO}    CDELT3 \= -2.442377011414E+05
    Element Should Contain    ${FILE_INFO}    CRPIX3 \= 1.0
    Element Should Contain    ${FILE_INFO}    CUNIT3 \= Hz
    Element Should Contain    ${FILE_INFO}    CTYPE4 \= STOKES
    Element Should Contain    ${FILE_INFO}    CRVAL4 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    CDELT4 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    CRPIX4 \= 1.0
    Element Should Contain    ${FILE_INFO}    CUNIT4 \=
    Element Should Contain    ${FILE_INFO}    PV2_1 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PV2_2 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    RESTFRQ \= 8.675429000000E+10 / Rest Frequency (Hz)
    Element Should Contain    ${FILE_INFO}    SPECSYS \= BARYCENT / Spectral reference frame
    Element Should Contain    ${FILE_INFO}    ALTRVAL \= 9.999999914138E+03 / Alternate frequency reference value
    Element Should Contain    ${FILE_INFO}    ALTRPIX \= 1.0 / Alternate frequency reference pixel
    Element Should Contain    ${FILE_INFO}    VELREF \= 258 / 1 LSR, 2 HEL, 3 OBS, +256 Radio
    Element Should Contain    ${FILE_INFO}    TELESCOP \= ALMA
    Element Should Contain    ${FILE_INFO}    DATE-OBS \= 2016-04-03T13:02:58.799982
    Element Should Contain    ${FILE_INFO}    TIMESYS \= UTC
    Element Should Contain    ${FILE_INFO}    OBSGEO-X \= 2.225142180269E+06
    Element Should Contain    ${FILE_INFO}    OBSGEO-Y \= -5.440307370349E+06
    Element Should Contain    ${FILE_INFO}    OBSGEO-Z \= -2.481029851874E+06
    [Teardown]    Close Browser


# HDF5 image has truncated floating numbers!
HDF5 File info
    [Setup]    Open Browser To CARTA
    Sleep    1
    Go To E2E QA Folder
    Scroll Element Into View    xpath://*[contains(text(), "M17_SWex.hdf5")]
    Click Element    xpath://*[contains(text(), "M17_SWex.hdf5")]
    Wait Until Element Contains    ${FILE_INFO}    Name \= M17_SWex.hdf5
    Element Should Contain    ${FILE_INFO}    Shape \= [640, 800, 25, 1]
    Element Should Contain    ${FILE_INFO}    Number of channels \= 25
    Element Should Contain    ${FILE_INFO}    Number of stokes \= 1
    Element Should Contain    ${FILE_INFO}    Coordinate type \= Right Ascension, Declination
    Element Should Contain    ${FILE_INFO}    Projection \= SIN
    Element Should Contain    ${FILE_INFO}    Image reference pixels \= [321.0, 401.0]
    Element Should Contain    ${FILE_INFO}    Image reference coords = [18:20:21.1200, -016.12.10.0800]
    Element Should Contain    ${FILE_INFO}    Image ref coords (deg) \= [275.088 deg, -16.2028 deg]
    Element Should Contain    ${FILE_INFO}    Celestial frame \= ICRS
    Element Should Contain    ${FILE_INFO}    Spectral frame \= LSRK
    Element Should Contain    ${FILE_INFO}    Velocity definition \= RADIO
    Element Should Contain    ${FILE_INFO}    Pixel unit \= Jy/beam
    Element Should Contain    ${FILE_INFO}    Pixel increment \= -0.400", 0.400"
    Element Should Contain    ${FILE_INFO}    Restoring beam \= 2.06105" X 1.49126", -74.6267 deg
    Click Element    xpath://*[contains(text(), "Header")]
    Wait Until Element Contains    ${FILE_INFO}    SIMPLE \= T / Standard FITS
    Element Should Contain    ${FILE_INFO}    BITPIX \= -32
    Element Should Contain    ${FILE_INFO}    NAXIS \= 4
    Element Should Contain    ${FILE_INFO}    NAXIS1 \= 640
    Element Should Contain    ${FILE_INFO}    NAXIS2 \= 800
    Element Should Contain    ${FILE_INFO}    NAXIS3 \= 25
    Element Should Contain    ${FILE_INFO}    NAXIS4 \= 1
    Element Should Contain    ${FILE_INFO}    BSCALE \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    BZERO \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    BMAJ \= 5.725140000000E-04
    Element Should Contain    ${FILE_INFO}    BMIN \= 4.142390000000E-04
    Element Should Contain    ${FILE_INFO}    BPA \= -7.462670000000E+01
    Element Should Contain    ${FILE_INFO}    BTYPE \= Intensity
    Element Should Contain    ${FILE_INFO}    OBJECT \= M17SW
    Element Should Contain    ${FILE_INFO}    BUNIT \= Jy/beam / Brightness (pixel) unit
    Element Should Contain    ${FILE_INFO}    RADESYS \= ICRS
    Element Should Contain    ${FILE_INFO}    LONPOLE \= 1.800000000000E+02
    Element Should Contain    ${FILE_INFO}    LATPOLE \= -1.620280000000E+01
    Element Should Contain    ${FILE_INFO}    PC1_1 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC2_1 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC3_1 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC4_1 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC1_2 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC2_2 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC3_2 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC4_2 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC1_3 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC2_3 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC3_3 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC4_3 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC1_4 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC2_4 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC3_4 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PC4_4 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    CTYPE1 \= RA---SIN
    Element Should Contain    ${FILE_INFO}    CRVAL1 \= 2.750880000000E+02
    Element Should Contain    ${FILE_INFO}    CDELT1 \= -1.111110000000E-04
    Element Should Contain    ${FILE_INFO}    CRPIX1 \= 321.0
    Element Should Contain    ${FILE_INFO}    CUNIT1 \= deg
    Element Should Contain    ${FILE_INFO}    CTYPE2 \= DEC--SIN
    Element Should Contain    ${FILE_INFO}    CRVAL2 \= -1.620280000000E+01
    Element Should Contain    ${FILE_INFO}    CDELT2 \= 1.111110000000E-04
    Element Should Contain    ${FILE_INFO}    CRPIX2 \= 401.0
    Element Should Contain    ${FILE_INFO}    CUNIT2 \= deg
    Element Should Contain    ${FILE_INFO}    CTYPE3 \= FREQ
    Element Should Contain    ${FILE_INFO}    CRVAL3 \= 8.675140000000E+10
    Element Should Contain    ${FILE_INFO}    CDELT3 \= -2.442380000000E+05
    Element Should Contain    ${FILE_INFO}    CRPIX3 \= 1.0
    Element Should Contain    ${FILE_INFO}    CUNIT3 \= Hz
    Element Should Contain    ${FILE_INFO}    CTYPE4 \= STOKES
    Element Should Contain    ${FILE_INFO}    CRVAL4 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    CDELT4 \= 1.000000000000E+00
    Element Should Contain    ${FILE_INFO}    CRPIX4 \= 1.0
    Element Should Contain    ${FILE_INFO}    CUNIT4 \=
    Element Should Contain    ${FILE_INFO}    PV2_1 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    PV2_2 \= 0.000000000000E+00
    Element Should Contain    ${FILE_INFO}    RESTFRQ \= 8.675430000000E+10 / Rest Frequency (Hz)
    Element Should Contain    ${FILE_INFO}    SPECSYS \= LSRK / Spectral reference frame
    Element Should Contain    ${FILE_INFO}    ALTRVAL \= 1.002138370318E+04
    Element Should Contain    ${FILE_INFO}    ALTRPIX \= 1.0
    Element Should Contain    ${FILE_INFO}    VELREF \= 257 / 1 LSR, 2 HEL, 3 OBS, +256 Radio
    Element Should Contain    ${FILE_INFO}    TELESCOP \= ALMA
    Element Should Contain    ${FILE_INFO}    OBSERVER \= sishii
    Element Should Contain    ${FILE_INFO}    DATE-OBS \= 2016-04-03T13:02:58.800000
    Element Should Contain    ${FILE_INFO}    TIMESYS \= UTC
    Element Should Contain    ${FILE_INFO}    OBSRA \= 2.750880000000E+02    
    Element Should Contain    ${FILE_INFO}    OBSDEC \= -1.620280000000E+01
    Element Should Contain    ${FILE_INFO}    OBSGEO-X \= 2.225142180269E+06
    Element Should Contain    ${FILE_INFO}    OBSGEO-Y \= -5.440307370349E+06
    Element Should Contain    ${FILE_INFO}    OBSGEO-Z \= -2.481029851874E+06
    Element Should Contain    ${FILE_INFO}    SCHEMA_VERSION \= 0.2
    Element Should Contain    ${FILE_INFO}    HDF5_CONVERTER \= hdf_convert
    Element Should Contain    ${FILE_INFO}    HDF5_CONVERTER_VERSION = 0.1.8
    Element Should Contain    ${FILE_INFO}    HDF5_DATE \= 2016-09-07T22:08:24.390001
    [Teardown]    Close Browser
