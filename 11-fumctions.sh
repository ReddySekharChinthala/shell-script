#/bin/bash
USERID=$(id -u)

Validation(){
    echo "Exit status is: $1"
    echo "What are you doing: $2"
}

if [ $USERID -ne 0 ]
then 
    echo "Please run the script with root access."
    exit 1
else
    echo "you are super user."
fi

dnf install mysql -y
Validation $? "Installating mysql"

dnf install git -y
Validation $? "Installating git"


