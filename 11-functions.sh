#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2...Installation is failed."
        exit 1
    else
        echo "$2...Installation is success."
    fi
}

if [ $USERID -ne 0 ]
then 
    echo "Please run script with root access."
    exit 1
else
    echo "Your super user."
fi

#Here $? should consider as 1st variable and Installation mySql is 2nd variable
#$? exist status of previous command
dnf install mysql -y
VALIDATE $? "Installing MySql"

dnf install git -y
VALIDATE $? "Installing git"
