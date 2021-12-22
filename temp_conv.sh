#!/bin/bash

while getopts "f:c:" opt; 
do
    case "$opt" in
            c) res=$((($OPTARG * (9 / 5) + 32)));;
            f) res=$((($OPTARG - 32) * (5 / 9)));;
            \?) ;;
    esac
done
echo "$res"
