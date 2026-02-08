#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIME_STAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo "Scritpt started and executed at: $TIMESTAMP"
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2..$R is Failure. $N"
        exit 1
    else
        echo -e "$2..$G is Success. $N"
    fi
}

if [ $USERID -ne 0 ]
then 
    echo "Please run script with root access."
    exit 1
else   
    echo "Your super user"
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing MYSQL"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing Git"