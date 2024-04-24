#!/bin/bash

USERNAME=$(id -u)

if [ $USERNAME -ne 0]
then
    echo "please use the root access"
    exit 1
else 
    echo your a super user
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation mysql...Failure"
    exit 1
else
    echo "Installation mysql success"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation git...Failure"
    exit 1
else
    echo "Installation git...success"
fi
