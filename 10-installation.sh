#/bin/bash

USERID=$(id -u)

if ( $USERID -ne 0 )
then
    echo "Please run the script with root access"
else
    echo "your a super user"
fi

dnf installing mysql -y

# if ( $? -eq 0 )
# then
#     echo ""