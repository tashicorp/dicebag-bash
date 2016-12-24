#! /usr/bin/env sh
 
### rollTest.sh ###

function testNumArgs() {
    cd ..
    ./roll.sh
    assertEquals 1 $?
}

function testHelpOption() {
    ./roll.sh help
    assertEquals 0 $? 
}

function testInvalidOption() {
    ./roll.sh invalid
    assertEquals 1 $?
}

function testRolld4() {
    ./roll.sh d4 > result.txt
    rollResult=$(cat result.txt)
    if [[ $rollResult =~ [1-4] ]]; then
      result=true 
    else
      result=false 
    fi
    assertEquals true $result 
}

function testRolld6() {
    ./roll.sh d6 > result.txt
    if [[ $rollResult =~ [1-6] ]]; then
      result=true
    else
      result=false
    fi
    assertEquals true $result
}

function testRolld8() {
    ./roll.sh d8 > result.txt
    if [[ $rollResult =~ [1-8] ]]; then
      result=true
    else
      result=false
    fi
    assertEquals true $result
}

function testRolld10() {
    ./roll.sh d10 > result.txt
    if [[ $rollResult =~ [1-10] ]]; then
      result=true
    else
      result=false
    fi
    assertEquals true $result
}

function testRolld12() {
    ./roll.sh d6 > result.txt
    if [[ $rollResult =~ [1-12] ]]; then
      result=true
    else
      result=false
    fi
    assertEquals true $result
}

 function testRolld20() {
    ./roll.sh d20 > result.txt
    if [[ $rollResult =~ [1-20] ]]; then
      result=true
    else
      result=false
    fi
    assertEquals true $result
}

## Call and Run all Tests
. "../shunit2-2.1.6/src/shunit2"
