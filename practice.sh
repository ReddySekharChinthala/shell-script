#!/bin/bash

USERNAME=$(id -u)

VALIDATE(){
    echo "Exit status: $1"
    echo "What are you doing: $2"
}

if [ $USERNAME -ne 0]
then
    echo "please use the root access"
    exit 1
else 
    echo your a super user
fi

dnf install mysql -y
VALIDATE $? "Installation...Mysql"


dnf install mysql -y
VALIDATE $? "Installation...git"

