#!/bin/bash

set -e 

failure(){
    echo "failure occures at line $1: Failure occured command is: $2"
}
trap 'failure ${LINENO} "${BASH_COMMAND}"' ERR

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run script with root access"
    exit 1
else
    echo "You are super user"
fi

dnf install mysqlll -y
dnf install git -y

echo "print the code proceeding?"