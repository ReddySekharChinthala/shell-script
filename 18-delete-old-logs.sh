#!/bin/bash

Source_Directory=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $Log_Directory ]
then
    echo -e "$G Source Directory is exists $N"
else
    echo -e "$R Please make sure $Source_Directory is exists $N"
    exit 1
fi

FILES=$(find $Source_Directory -name "*.log" -mtime +14)

while IFS= read -r line
do
    echo "Deleting file: $line"
    rm -rf $line
done <<< $FILES