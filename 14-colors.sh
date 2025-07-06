#!/bin/bash

USERID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo "Script started at: $TIMESTAMP"

if [ $USERID -ne 0 ]
then 
    echo "please run the script with root access."
    exit 1
else
    echo "You are a super user."
fi

VALIDATE(){

    if [ $1 -ne 0 ]
    then 
        echo -e "$2 is.....$R FAILING $N"
        exit 1
    else 
        echo "$2 is.....$G SUCCESS $N"
    fi
    
}

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing MYSQL"

dnf install docker -y &>>$LOGFILE
VALIDATE $? "Installing docker"