#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then
    echo -e "$G Source directory is exist $N"
else
    echo -e "$R Please make sure $SOURCE_DIRECTORY to exist $N"
    exit 1
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

while IFS= read -r line #internal filed separator to check each line in FILES and give to while
do 
    echo "Deleting file: $line" #$line vise will delete the files
    rm -rf $line 
    
done <<< $FILES



