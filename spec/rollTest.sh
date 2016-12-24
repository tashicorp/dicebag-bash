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
 
## Call and Run all Tests
. "../shunit2-2.1.6/src/shunit2"
