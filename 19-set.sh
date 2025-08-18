#!/bin/bash

set -e 

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run script with root access"
    exit 1
else
    echo "You are super user"
fi

dnf install mysqlll -y
dnf install git -y

echo "print the code proceeding?"