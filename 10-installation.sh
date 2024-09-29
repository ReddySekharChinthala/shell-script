#/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run the script with root access."
    exit 1
else
    echo "your a super user"
fi

dnf install mysql -y

if ( $? -eq 0 )
then
    echo "Installation of mysql is.... failure."
    exit 1
else 
    echo "Installation of mysql is.... SUCCESS."
fi

dnf install git -y

if ( $? -eq 0 )
then
    echo "Installation of git is.... failure."
    exit 1
else
    echo "Installation of git is....SUCCESS"
fi

echo "Script is proceeding?"
