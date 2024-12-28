#/bin/bash

USERID=$(id -u)

if [ $? -ne 0 ]
then 
    echo "Please run the script with root acces."
else
    echo "Your super user."
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of mysql is success.."
else
    echo "Installation is Failure.."
fi

dnf install git -y

f [ $? -ne 0 ]
then
    echo "Installation of mysql is success.."
else
    echo "Installation is Failure.."
fi