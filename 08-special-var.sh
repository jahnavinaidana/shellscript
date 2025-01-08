#!/bin/bash

echo "all variables: $@"
echo "number of variables passed: $#"
echo "script name: $0"
echo "Current Working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "which user is running this script: $USER"
echo "Hostname: $HOSTNAME"
echo "process ID of the current shell script: $$"
sleep 50 &
echo "proces id of last background command: $!"