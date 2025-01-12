#!/bin/bash

set -e

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Please run the script with root access."
    exit 1
else
    echo "you are super user."
fi

dnf install myyssql -y
dnf install git -y

echo "is script proceeding?"


