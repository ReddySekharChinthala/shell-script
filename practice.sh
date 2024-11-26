#!/bin/bash

# #Hello World print
# echo "Hello, Myself ReddySekhar. iam a DevOps Engoneer."

# #Declaring variable
# Person1=$1
# Person2=$2

# #Reffering variable
# echo "$Person1:: Hi $Person2, how are you..?"
# echo "$Person2:: Hi $Person1, iam good. How are you..?"

# # For securing our details

# echo "please enter your username::"
# read "USERNAME"

# echo "Please enter your password::"
# read -s "PASSWORD"

#echo "username is:: $USERNAME and password is:: $PASSWORD"

## Array's##
Names=("Reddy" "Sekhar" "Pavithra")

echo "First name is:: ${Names[0]}"
echo "Second name is:: ${Names[1]}"
echo "All name list is:: ${Names[@]}"