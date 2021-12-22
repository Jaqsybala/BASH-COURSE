#!/bin/bash


echo "Host: $(cat /etc/hostname)" >> ~/performance.log
date +%D" "%T >> ~/performance.log

if [[ $(ping -c 1 youtube.com &> /dev/null) ]]; then
    echo "Internet: Connected." >> ~/performance.log
else
    echo "Internet: Connected." >> ~/performance.log
fi

{ 
    echo "RAM Usage: "
    free -h | grep "Mem" 
} >> ~/performance.log

{ 
    echo "Swap Usage: " 
    free -h | grep "Swap" 
} >> ~/performance.log


{ 
    echo "Disk Usage: " 
    df -h 
    echo "" 
} >> ~/performance.log

