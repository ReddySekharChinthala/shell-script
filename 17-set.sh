#!/bin/bash

set -e

failure() {
  
  echo "Failed at $1: $2"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Please run the script with root access."
    exit 1
else
    echo "you are super user."
fi

dnf install mysqqql -y
dnf install git -y

echo "is script proceeding?"

