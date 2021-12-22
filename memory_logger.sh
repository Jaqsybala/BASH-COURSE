#!/bin/bash

if [[ ! -d "$HOME/performance" ]]; then
    echo "Creating a directory $HOME/performance."
    mkdir $HOME/performance
else
    echo "Directory $HOME/performance exists."
fi

free -h >> $HOME/performance/memory.log ; date +%F" "%T >> $HOME/performance/memory.log
