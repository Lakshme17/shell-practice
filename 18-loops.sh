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

#$1 represents the first argument passed to the script when it is executed
VALIDATE(){
     if [ $1 -ne 0 ]; then
         echo -e "installing $2 .....$R failure $N" | tee -a $LOG_FILE
         exit 1
     else
         echo -e "installing $2 ......$G success $N" | tee -a $LOG_FILE
     fi        
 }

#$@ special variables 

for package in $@
do  
    #CHECK PACKAGE IS ALREADY INSTALLED OR NOT
   dnf list installed $package &>>$LOG_FILE

   #IF EXIT Status is 0, already istalled, -ne 0 needs to install it
   if [ $? -ne 0 ]; then
       dnf install $package -y &>>$LOG_FILE
       VALIDATE $? "$package"
   else

      echo -e "$package already installed .....$Y Skipping $N"
   fi
done