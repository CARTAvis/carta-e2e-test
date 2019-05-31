*** Settings ***
Documentation     A user explores the contents of the help menu.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Check Online Manual By Clicking
    [Setup]    Initialize CARTA For Testing
    Click Element    ${GUI_ELEMENT_HelpMenu}
    Click Element    ${GUI_ELEMENT_OnlineManual}
    Select Window    MAIN
    Sleep    2
    Select Window    NEW
    Location Should Be    ${USER_MANUAL_URL}
    Wait Until Page Contains    documentation    timeout=10
    [Teardown]    Close Browser

Check Shortcut Cheatsheet By Clicking
    [Setup]    Initialize CARTA For Testing
    Click Element    ${GUI_ELEMENT_HelpMenu}
    Click Element    ${GUI_ELEMENT_Shortcut}
    Element Should Be Visible    ${GUI_ELEMENT_ShortcutWindow}
    Element Should Contain    ${GUI_ELEMENT_ShortcutWindow}    Navigation
    [Teardown]    Close Browser

Check Shortcut Cheatsheet Via Shortcut
    [Setup]    Initialize CARTA For Testing
    Press Keys    None    SHIFT+?
    Element Should Be Visible    ${GUI_ELEMENT_ShortcutWindow}
    Element Should Contain    ${GUI_ELEMENT_ShortcutWindow}    Navigation
    [Teardown]    Close Browser

Check About By Clicking
    [Setup]    Initialize CARTA For Testing
    Click Element    ${GUI_ELEMENT_HelpMenu}
    Click Element    ${GUI_ELEMENT_About}
    Element Should Contain    ${GUI_ELEMENT_AboutWindow}    About CARTA
    [Teardown]    Close Browser