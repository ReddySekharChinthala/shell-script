#!/bin/bash

MOVIES=("RRR" "DJTillul" "Murari")

echo "first movie name is: ${MOVIES[0]}"
echo "second movie name is: ${MOVIES[2]}"
echo "third movie name is: ${MOVIES[1]}"
echo "All variables : ${MOVIES[@]}"
echo "All variables: $@"
echo "Number of variable passed: $#"
echo "Script name: $0"
echo "current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "which use is working this script: $USER"
echo "Process ID: $$"


NUMBER=$5

if [$NUMBER is -gt 10]
then
    echo "Given number $NUMBER is greater then 10"

else

    echo "Given number $NUMBER is less then 10"

fi