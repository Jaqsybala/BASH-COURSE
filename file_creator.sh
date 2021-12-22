#!/bin/bash

readarray -t files < files.txt

for file in "${files[@]}"; do
    if [[ -f "$file" ]]; then
        echo "This $file already exists in $(pwd)"
    else 
        touch "$file"
    fi
done
