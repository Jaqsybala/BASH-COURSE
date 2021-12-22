#!/bin/bash

while read line;
do
    cd $HOME
    mkdir -v "$line" 
done < "$1"
