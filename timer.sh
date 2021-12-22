#!/bin/bash

total_sec=""

while getopts "m:s:" opt;
do
    case "$opt" in
        m) total_sec=$(( total_sec + OPTARG * 60 ));;
        s) total_sec=$(( total_sec + OPTARG ));;
        *) "This is not time."
    esac

done

while  [[ $total_sec -gt 0 ]];
do
        echo "$total_sec s" 
        total_sec=$(( total_sec - 1 ))
        sleep 1s
done

echo "TIME IS UP!!!"
