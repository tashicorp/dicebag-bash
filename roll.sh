#!/bin/bash

if [ $# -lt 1 ]
then
  echo "Usage: $0 [d4|d6|d8|d10|d12|d20]"
  echo "Run help to see a list of available options."
  exit 1
fi

roll () {
  dieType=$1
  faces="${dieType//[!0-9]}"
  dieRoll=$(( ( RANDOM % $faces )  + 1 ))
  echo $dieRoll 
}

case "$1" in
  'help' )
    echo "Pass one of the following arguments to this command to roll a die with the specified number of faces: d4, d6, d8, d10, d12, d20." ;;
  'd4' )
    roll $1 ;;
  'd6' )
    roll $1 ;;
  'd8' )
    roll $1 ;;
  'd10' )
    roll $1 ;;
  'd12' )
    roll $1 ;;
  'd20' )
    roll $1 ;;
   * )
     echo "Invalid option. Please run 'help' to see a list of valid options."
     exit 1
esac
