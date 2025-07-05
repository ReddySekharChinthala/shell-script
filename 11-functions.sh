#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run the script with root access.."
    exit 1
else
    echo "Your a super user.."
fi

VALIDATE(){
    echo "exit status:: $1"
    echo "what are you doing: $2"
}

dnf install mysql -y 
VALIDATE $? "Installing MYSQL"


dnf install git -y
VALIDATE $? "Installing git"

