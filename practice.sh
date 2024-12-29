#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="e\[31m"
G="e\[32m"
N="e\[0m"

VALIDATION(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2... $R is Failure $N"
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
VALIDATION $? "Installation of Mysql"

dnf install git -y &>>$LOGFILE
VALIDATION $? "Installation of git"
