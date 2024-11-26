#!/bin/bash

#Hello World print
echo "Hello, Myself ReddySekhar. iam a DevOps Engoneer."

#Declaring variable
Person1=$1
Person2=$2

#Reffering variable
echo "$Person1:: Hi $Person2, how are you..?"
echo "$Person2:: Hi $Person1, iam good. How are you..?"

# For securing our details

echo "please enter your username::"
read "USERNAME"

echo "Please enter your password::"
read -s "PASSWORD"

echo "username is:: $USERNAME and password is:: $PASSWORD"