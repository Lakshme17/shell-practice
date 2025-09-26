#!/bin/bash

echo "Please enter your number:"
read NUMBER

if [ $(($NUMBER % 2)) -ne 1 ]; then
    echo "Given number $NUMBER is EVEN"
else 
    echo "Gievn number $NUMBER is ODD"  
fi 
