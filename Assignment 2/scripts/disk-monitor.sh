#!/bin/bash

THRESHOLD=80

USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $USAGE -gt $THRESHOLD ]
then
    echo "ALERT: Disk usage is above 80%" >> disk-alert.log
else
    echo "Disk usage is normal" >> disk-alert.log
fi
