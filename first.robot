*** Settings ***
Library	SeleniumLibrary

*** Variables ***
${BROWSER}	Chrome

*** Test Cases ***
MyFirstTestCaseByGG
	Log 	Hello World....
	Log 	%{USERNAME}
	Log 	${URL}
	Log 	${BROWSER}
	
Valid Login
	Open Browser    ${URL}    ${BROWSER}
	Maximize Browser Window
	Close Browser
