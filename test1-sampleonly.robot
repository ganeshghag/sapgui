*** Settings ***
Library	SeleniumLibrary

*** Variables ***
${BROWSER}	Chrome

*** Test Cases ***
MyFirstTestCaseByGG
	Log 	Hello World....
	Log 	%{USERNAME}
	Log 	%{URL}
	Log 	${BROWSER}
	
Valid Login
	Open Browser    %{URL}    ${BROWSER}
	Maximize Browser Window
	Set Selenium Speed	0.3 seconds

	Click Element    //b[@class="caret"]
	Click Link    //a[@href="./basic-first-form-demo.html"]
	Input Text    //input[@id="user-message"]    sampel messahe
	Click Element    //button[@class="btn btn-default"]
	Input Text    //input[@id="sum1"]    983
	Input Text    //input[@id="sum2"]    Ganesh Ghag
	Click Element    xpath=(//button[@class="btn btn-default"])[2]
	Click Element    xpath=(//div[@class="row"])[2]
	Input Text    //input[@id="sum2"]    14
	Click Element    xpath=(//button[@class="btn btn-default"])[2]

	Close Browser
