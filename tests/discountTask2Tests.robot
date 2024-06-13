*** Settings ***
Documentation    A test suite for the discount app
Library    ../resources/DiscountLibrary.py

*** Test Cases ***
Test 1
    Get discount   ${1}    ${True}
    Result should be    ${0}

Test 2
    Get discount   ${1}    ${False}
    Result should be    ${0}

Test 3
    Get discount   ${80}    ${True}
    Result should be    ${0}

Test 4
    Get discount   ${80}    ${False}
    Result should be    ${0}

Test 5
    Get discount   ${81}    ${True}
    Result should be    ${1}

Test 6
    Get discount   ${81}    ${False}
    Result should be    ${0}

Test 7
    Get discount   ${120}    ${True}
    Result should be    ${0}

Test 8
    Get discount   ${120}    ${False}
    Result should be    ${0}

Test 9
    Get discount   ${121}    ${True}
    Result should be    ${1}

Test 10
    Get discount   ${121}    ${False}
    Result should be    ${1}

Test 11
    Get discount   ${10000}    ${True}
    Result should be    ${1}

Test 12
    Get discount   ${10000}    ${False}
    Result should be    ${1}

