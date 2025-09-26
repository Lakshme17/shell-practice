#!/bin/bash

NUMBER=$1

if [ $NUMBER -lt 17 ]; then
    echo "Given number $NUMBER is less than 17"
else
    echo "Given number $NUMBER is greater than or equal to 17"
fi        