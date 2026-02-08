#!/bin/bash

USERID=$(id -u)
TIME_STAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIME_STAMP.log

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2..is Failure."
        exit 1
    else
        echo "$2..is Success."
    fi
}

if [ $USERID -ne 0 ]
then 
    echo "Please run script with root access."
    exit 1
else   
    echo "Your super user"
fi

dnf install mysql -y &>>LOGFILE
VALIDATE $? "Installing MYSQL"

dnf install git -y &>>LOGFILE
VALIDATE $? "Installing Git"