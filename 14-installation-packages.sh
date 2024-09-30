#/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2--is FAILURE."
        exit 1
    else
        echo "$2..is SUCCESS."
    fi
}

if [ $USERID -ne 0 ]
then
    echo "please run the script with root access."
    exit 1
else 
    echo "You are super user."
fi

for i in $@
do 
    echo "package to install: $i"
    dnf list installed $i &>>LOGFILE
    if [ $? -eq 0 ]
    then 
        echo -e "$i is already installed....$Y SKIPPING. $N"
    else
        dnf install $i -y &>>LOGFILE
        VALIDATE $? "installation of $i"
    fi
done