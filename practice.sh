#!/bin/bash
USEID=$(id -u)

if [ $USEID -ne 0 ]
then
    echo "Please run the script with root access."
    exit 1
else
    echo "you are a super user."
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of mysql is..Failure."
    exit 1
else
    echo "Installation of mysql is..Success."
fi
 