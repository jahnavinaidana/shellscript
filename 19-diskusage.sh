#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=6
MESSAGE=""

while IFS= read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1 )
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        MESSAGE+="$FOLDER is more than $DISK_THRESHOLD, Current usage: $USAGE \n"
    fi
done <<< $DISK_USAGE

echo -e "Message: $MESSAGE"

echo "$MESSAGE" | mail -s "disk usage alert" jahnavinaidana@gmail.com
echo "This is a test mail & Date $(date)" | mail -s "disk usage alert" jahnavinaidana@gmail.com

# echo "body" |mail -s "subject" to-address
# echo "This is a test mail & Date $(date)" | mail -s "disk usage alert"
