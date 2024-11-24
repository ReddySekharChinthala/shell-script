#!/bin/bash

USERID=$(id -u)

validate(){
if [ $1 -ne 0 ]
then
    echo "$2 is.. Failure."
else
    echo "$2 is..Success."
fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi


dnf install mysql -y
Validate $? "Installing mysql"

dnf install git -y
Validate $? "Installing git"
 