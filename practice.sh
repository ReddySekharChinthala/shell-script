#!/bin/bash

USERID=$(id -u)

VALIDATION(){
    if [ $1 -ne 0 ]
    then
        echo "$2... is Failure."
    else
        echo "$2... is Success."
    fi
}

if [ $USERID -ne 0 ]

then
    echo "Please run script with root access."
else
    echo "Your are super user"
fi

dnf install mysql -y
VALIDATION $? "Installation of Mysql"

dnf install git -y
VALIDATION $? "Installation of git"
