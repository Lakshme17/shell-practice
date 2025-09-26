#!/bin/bash

NUMBER=$1

#if [ $NUMBER -lt 17 ]; then
#    echo "Given number $NUMBER is less than 17"
#else
 #   echo "Given number $NUMBER is greater than or equal to 17"
#fi        

if [ $NUMBER -lt 17 ]; then
    echo "Given number $NUMBER is less than 17"
elif [ $NUMBER -eq 17 ]; then
    echo "Given number $NUMBER is equal to 17"   
else
    echo "Given number $NUMBER is greater than to 17"
fi     



# -gt -> greater than
# -lt -> less than
# -eq -> equal to
# -ne ->not equal to