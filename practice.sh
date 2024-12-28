#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]

then
    echo "Please run script with root access."
else
    echo "Your are super user"
fi

dnf install mysql -y
if [ $? -ne 0 ]
then
    echo "Installation of mysql is success."
else
    echo "Installation is Failure."
fi

dnf install git -y
if [ $? -ne 0 ]
then
    echo "Installation of mysql is success."
else
    echo "Installation is Failure."
fi
