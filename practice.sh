#!/bin/bash

MOVIES=("RRR" "DJTillul" "Murari")

echo "first movie name is: ${MOVIES[0]}"
echo "second movie name is: ${MOVIES[2]}"
echo "third movie name is: ${MOVIES[1]}"
echo "All variables : ${MOVIES[@]}"
echo "All variables: $@"
echo "Number of variable passed: $#"
echo "Script name: $0"