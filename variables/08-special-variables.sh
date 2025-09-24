#!/bin/bash

echo "all variables passed to the script: $@"
echo "all variables passed to the script: $*"

echo "script name: $0" #dynamic 

#self explainatory 

echo "current directory: $PWD"
echo "who is running this: $USER"
echo "home diectory: $HOME"
echo "pid of the script: $$" #$$ script pid
sleep 50 & #it will go to background 
echo "pid of the last command in background is: $!" #$! pid value