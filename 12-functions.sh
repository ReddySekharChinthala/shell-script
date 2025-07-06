#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "please run the script with root access."
    exit 1
else
    echo "You are a super user."
fi

VALIDATE(){
    echo "exit status: $1"
    echo "what are you doing: $2"
}

dnf install mysql -y
VALIDATE $? "Installing MYSQL"

dnf install docker -y
VALIDATE $? "Installing docker"

