# CARTA end-to-end tests
CARTA end-to-end tests are built with the [robot framework](https://robotframework.org) and [seleniumlibrary](http://github.com/robotframework/SeleniumLibrary/) to emulate a user interacts with the CARTA GUI to achieve a certain goal, such as opening all image types that CARTA supports. 

Tests are catagorized into two sets, one is **feature_test**, and the other is **performance_test**.

The **utilities** folder contains tools for diagnostics (e.g., pngDiff.py which accepts two png images and makes a difference image). 

After running tests, report and log can be found in report.html and log.html, respectively. They are located at the same path where test was run from.

## Test environment setup
Before running end-to-end test, we need to make sure robot framework and seleniumlibrary are installed.
To install robot framework:
```
pip install robotframework
```
or check the [instructions](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst).

To install seleniumlibrary:
```
pip install robotframework-seleniumlibrary
```
or check the [instructions](https://github.com/robotframework/SeleniumLibrary/#installation).

Once the above are installed, try the following in your terminal.
```
robot --version
```
If you see something similar to the following, we are ready.  :raised_hands: :raised_hands: :raised_hands:
```
Robot Framework 3.0.3 (Python 2.7.3 on darwin)
```


## How to run tests
* To run all tests in a test suite (which is a folder containing different tests (.robot file)):
  ```
  robot feature_test
  ```
  Note that the order is alphabetical based on the file name of the test scripts. Critical tests that must be run first have been named as "A01_xxx.robot", "A02_yyy.robot", etc.
* To run all test cases of a specific test (e.g, feature_test/image_zoom_pan.robot):
  ```
  robot feature_test/image_zoom_pan.robot
  ```
* To run a specific test case of a test (e.g., "Crazy Image Zoom Test" of feature_test/image_zoom_pan.robot):
  ```
  robot -t "Crazy Image Zoom Test" feature_test/image_zoom_pan.robot
  ```
* To run all test cases of a test randomly (e.g., feature_test/A02_open_supported_images.robot):
  ```
  robot --randomize tests feature_test/A02_open_supported_images.robot
  ```
  By default, test cases of a test are run in order as defined in the test script from top to down.
  More information on running tests randomly can be found [here](http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#randomizing-execution-order).

## Note about the test implementation
1. Tests are implemented using the ASIAA CARTA demo server as a reference. The URL is defined in resource.robot.
2. Time gap between each step has not yet been optimized (to avoid unnecessary explicit and implicit wait) and the current design is based on the network condition at ASIAA.


## Questions
Please contact "kswang1029". :-)