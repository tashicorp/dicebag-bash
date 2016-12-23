#!/bin/bash

case "$1" in
  'help' )
   echo "Pass one of the following arguments to this command to roll a die with the specified number of faces: d4, d6, d8, d12, d20." 
   exit 0
   ;;
  *) echo "Invalid option. Please run 'help' to see a list of valid options."
    exit 1
esac

# Case statement to check if your argument is d4, d6, d8, d12 or d20.

# Depending on which case statement you pick, calls a function that generates a random number within the appropriate range and returns it.

# How to TDD bash???

