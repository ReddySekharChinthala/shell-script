#/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Please run the script with root access."
    exit 1
else
    echo "you are super user."
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of Mysql...FAILURE."
else
    echo "Installation of Mysql...SUCCESS."
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "Installation of git...FAILURE."
else
    echo "Installation of git...SUCCESS."
fi
