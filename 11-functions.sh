#/bin/bash
USERID=$(id -u)

Validation(){
    if [ $1 -ne 0 ]
    then 
        echo "$2 is....FAILURE"
        exit 1
    else
        echo "$2 is....SUCCESS"
    fi
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


