#/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run the script with root access."
    exit 1
else
    echo "your a super user"
fi

dnf install mysqll -y

if ( $? -eq 0 )
then
    echo "Installation of mysql is.... failure."
fi

dnf install git -y

if ( $? -eq 0 )
then
    echo "Installation of git is.... failure."
fi

echo "Script is proceeding?"
