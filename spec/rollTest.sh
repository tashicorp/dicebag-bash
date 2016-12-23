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
 
## Call and Run all Tests
. "../shunit2-2.1.6/src/shunit2"
