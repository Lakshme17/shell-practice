#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
    echo "rror:: please run this script with root priveleges"
    exit 1 
fi 

VALIDATE(){
     if [ $1 -ne 0 ]; then
        echo "error:: installing $2 is failure"
        exit 1
     else 
        echo "installing $2 is success"
     fi 
}

dnf install mmysql -y 
VALIDATE $? "MySQL"

dnf install nginx -y
VALIDATE $? "Nginx"

dnf install python3 -y 
VALIDATE $? "Python3"