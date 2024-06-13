*** Settings ***
Documentation    A test suite for the Alarm app
Library    ../resources/AlarmLibrary.py

Test Setup    ResetAlarm

*** Keywords ***
ResetAlarm
    [Documentation]    "We reset the alarm FSM before each test case to ensure test independence
    Reset
    Log To Console    "Reset"

Check Arm
    [Arguments]    ${expected}
    Arm
    Result Should Be    ${expected}

Check Close Doors
    [Arguments]    ${expected}
    Close Doors
    Result Should Be    ${expected}


*** Test Cases ***
Test 1
    Close Doors
    Result Should Be    ${1}
    Disarm
    Result Should Be    ${2}
    Arm 
    Result Should Be    ${1}
    Arm
    Result Should Be    ${1} 
    Open Doors
    Result Should Be    ${27}
    Disarm
    Result Should Be    ${2}
    Arm
    Result Should Be    ${0} 
    Disarm
    Result Should Be    ${2}

Test 2
    Arm 
    Result Should Be    ${0}
    Arm
    Result Should Be    ${0}
    Disarm
    Result Should Be    ${2}

Test 3
    Close Doors
    Result Should Be    ${0}
    Disarm
    Result Should Be    ${2}
    Disarm
    Result Should Be    ${2}
    Open Doors
    Result Should Be    ${0}


Test 4
    Arm 
    Result Should Be    ${0}
    Close Doors
    Result Should Be    ${1}
    Arm 
    Result Should Be    ${1} 
    Disarm
    Result Should Be    ${2}
    Disarm
    Result Should Be    ${2}
    Open Doors
    Result Should Be    ${0}  


Test 5  #Disarm/2  arm/0  arm/0  closeDoors/1  arm/1  disarm/2  disarm/2  openDoors/1 
    Disarm
    Result Should Be    ${2}
    Arm 
    Result Should Be    ${0} 
    Arm 
    Result Should Be    ${0}  
    Close Doors
    Result Should Be    ${1}
    Arm 
    Result Should Be    ${1} 
    Disarm
    Result Should Be    ${2}
    Disarm
    Result Should Be    ${2}
    Open Doors
    Result Should Be    ${0}  
   
  