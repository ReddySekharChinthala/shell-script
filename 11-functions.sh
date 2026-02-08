#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    echo "Exit Status: $1"
    echo "What are you doing: $2?"
}

if [ $USERID -ne 0 ]
then 
    echo "Please run script with root access."
    exit 1
else
    echo "Your super user."
fi

dnf install mysql -y
VALIDATE $? "Installing MySql"

dnf install git -y
VALIDATE $? "Installing git"
