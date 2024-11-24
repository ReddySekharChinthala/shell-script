#!/bin/bash

USERID=$(id -u)

validate() {
if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi
}

dnf install mysql -y
Validate $? "Installing mysql"

dnf install git -y
Validate $? "Installing git"
 