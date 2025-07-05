#!/bin/bash

USERID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)


echo "Script started at $TIMESTAMP"

if [ $USERID -ne 0 ]
then
    echo "Please run the script with root access.."
    exit 1
else
    echo "Your a super user.."
fi

VALIDATE(){

    if [ $1 -ne 0 ]
    then
        echo "$2...is FAILURE"
        exit 1
    else
        echo "$2...is SUCCESS"
    fi
}

dnf install mysql -y 
VALIDATE $? "Installing MYSQL"


dnf install git -y
VALIDATE $? "Installing git"

