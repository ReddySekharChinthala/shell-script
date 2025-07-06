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

    if [ $1 -ne 0 ]
    then 
        echo "$2 is.....FAILING"
        exit 1
    else 
        echo "$2 is.....SUCCESS"
    fi
    
}

dnf install mysql -y
VALIDATE $? "Installing MYSQL"

dnf install docker -y
VALIDATE $? "Installing docker"

