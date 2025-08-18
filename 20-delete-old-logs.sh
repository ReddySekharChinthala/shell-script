#!/bin/bash

SOURCE_DiRECTORY=/tmp/app-logs

if [ -d $SOURCE_DiRECTORY ]
then
    echo -e "$G Source directory is exist $N"
else
    echo -e "$R Please make sure $SOURCE_DiRECTORY to exist $N"
    exit 1
fi

FILES=$(find $SOURCE_DiRECTORY -name "*.log" -mtime +14)

echo "deleting the file: $FILES"



