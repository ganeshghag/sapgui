*** Settings ***
Library           SapGuiLibrary

*** Test Cases ***
Run Z Program in SAP
    Open Connection    /H/<ip Address>/S/3200
    Logon              P55045520    BD7Sap    001
    Start Transaction  SE38
    Input Text         wnd[0]/usr/ctxtRS38M-PROGRAMM    <some program>
    Press Button       wnd[0]/tbar[1]/btn[8]
    Close Connection
