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
# Names=("Reddy" "Sekhar" "Pavithra")

# echo "First name is:: ${Names[0]}"
# echo "Second name is:: ${Names[1]}"
# echo "All name list is:: ${Names[@]}"

##data types##

# no1=$1
# no2=$2

# SUM=$(($no1+$no2))
# echo "total no of $no1 and $no2 is:: $SUM"

##Special variable##

# echo "all variables:$@"
# echo "Number of variables passed:$#"
# echo "script name:$0"
# echo "current working directory::$PWD"
# echo "home directory of current user:$HOME"
# echo "hostname:$HOSTNAME"
# echo "process ID of the current shellscript: $$"

##COnditions##

Number=$1

if [ $Number -gt 0 ]
then 
    echo "given number is greater than 5"
else
    echo "given number is less than 5"
fi