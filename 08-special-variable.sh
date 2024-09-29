#!/bin/bash

echo "All variables: $@"
echo "Number of variables passed: $#"
echo "Script Name: $0"
echo "current working directory: $PWD"
echo "current working home directory: $HOME"
echo "current working user: $USER"
echo "Hostname: $HOSTNAME"
echo "process id of the shell script: $$"
echo "process id of background command: $!"