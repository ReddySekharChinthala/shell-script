#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then    
    echo "Please run the script with root access."
    exit 1
else
    echo "you are a super user."
fi

dnf install mysqll -y

if [ $? -ne 0 ]
then
    echo "Instllation of mysqll is failure.."
    exit 1
else
    echo "Instllation of mysql is success.."
fi

echo "is script proceeding?"