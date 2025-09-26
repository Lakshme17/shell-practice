#!/bin/bash


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[om"

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "error:: please run this script with root privilege"
    exit 1 
fi

#$1 represents the first argument passed to the script when it is executed.
VALIDATE(){
     if [ $1 -ne 0 ]; then
         echo -e "installing $2 .....$R failure $N"
         exit 1
     else
         echo -e "installing $2 ......$G success $N"
     fi        
 }
 
dnf list installed mysql
if [ $? -ne 0 ]; then
    dnf install mysql -y 
    VALIDATE $? "MySQL"
else
    echo -e "MySQL already exit ...$Y skipping $N"
fi 

dnf list installed nginx
if [ $? -ne 0 ]; then
    dnf install nginx -y 
    VALIDATE $? "Nginx"
else
    echo -e "Nginx already exit ...$Y skipping $N"
fi 

dnf list installed python3
if [ $? -ne 0 ]; then
    dnf install python3 -y 
    VALIDATE $? "Python3"
else
    echo -e "python3 already exit ...$Y skipping $N"
fi