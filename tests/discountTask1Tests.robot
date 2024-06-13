*** Settings ***
Documentation    A test suite for the discount app
Library    ../resources/DiscountLibrary.py

*** Test Cases ***
Test ID1
    Get discount   ${120}    ${False}
    Result should be    ${0}

Test ID2
    Get discount   ${121}    ${False}
    Result should be    ${1}

Test ID3
    Get discount   ${0}    ${True}
    Result should be    ${-1}

Test ID4
    Get discount   ${10001}    ${False}
    Result should be    ${-1}

Test ID5
    Get discount   ${80}    ${True}
    Result should be    ${0}

Test ID6
    Get discount   ${81}    ${False}
    Result should be    ${0}

Test ID7
    Get discount   ${1}    ${False}
    Result should be    ${0}

