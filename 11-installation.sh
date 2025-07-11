#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "please run the script with root access"
    exit 1
else
    echo "you are a super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of MYSQL is FAILURE."
    exit 1
else 
    echo "Installation of MYSQL is SUCCESS."
fi

dnf install docker -y

if [ $? -ne 0 ]
then
    echo "Installation of docker is FAILURE."
    exit 1
else 
    echo "Installation of docker is SUCCESS."
fi
