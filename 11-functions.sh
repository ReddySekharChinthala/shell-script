#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run the script with root access.."
    exit 1
else
    echo "Your a super user.."
fi

dnf install mysql -y 

if [ $? -ne 0 ]
then
    echo "Installation of MYSQL is ....FAILURE."
    exit 1
else
    echo "Installation of MYSQL is....SUCCESS."
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "Instllation of git is.....FAILURE"
    exit 1
else
    echo "Installation of git is....SUCCESS"
fi