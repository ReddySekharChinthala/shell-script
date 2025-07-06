#!/bin/bash

echo "All veriables:: $@"
echo "Number of passing veriables:: $#"
echo "Shell script name:: $0"
echo "present working directory:: $PWD"
echo "home directory of current user:: $HOME"
echo "current user script:: $USER"
echo "hostname:: $HOSTNAME"
echo "process ID of current shell script:: $$"
sleep 60 &
echo "process ID of last backgriund command: $!"
echo "exit status of the previous command:: $?"



