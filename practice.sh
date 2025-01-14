#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="e\[31m"
G="e\[32m"
N="e\[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2... $R is Failure $N"
        exit 1
    else
        echo -e "$2... $G is Success $N"
    fi
}

if [ $USERID -ne 0 ]

then
    echo "Please run script with root access."
    exit
else
    echo "Your are super user"
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installation of Mysql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installation of git"
