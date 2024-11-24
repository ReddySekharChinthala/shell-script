#!/bin/bash

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "INstallation of mysql is..Failure."
else
    echo "INstallation of mysql is..Success."
fi
 