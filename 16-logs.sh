#!/bin/bash


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERID=$(id -u)

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"


mkdir -p $LOGS_FOLDER
echo "Script started executed at: $(date)" | tee -a $LOG_FILE

if [ $USERID -ne 0 ]; then
    echo "error:: please run this script with root privilege"
    exit 1 
fi

#$1 represents the first argument passed to the script when it is executed.
VALIDATE(){
     if [ $1 -ne 0 ]; then
         echo -e "installing $2 .....$R failure $N" | tee -a $LOG_FILE
         exit 1
     else
         echo -e "installing $2 ......$G success $N" | tee -a $LOG_FILE
     fi        
 }
 
dnf list installed mysql &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install mysql -y &>>$LOG_FILE
    VALIDATE $? "MySQL"
else
    echo -e "MySQL already exit ...$Y skipping $N" | tee -a $LOG_FILE
fi 

dnf list installed nginx &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install nginx -y &>>$LOG_FILE
    VALIDATE $? "Nginx"
else
    echo -e "Nginx already exit ...$Y skipping $N" | tee -a $LOG_FILE
fi 

dnf list installed python3 &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install python3 -y &>>$LOG_FILE
    VALIDATE $? "Python3"
else
    echo -e "python3 already exit ...$Y skipping $N" | tee -a $LOG_FILE
ficd 