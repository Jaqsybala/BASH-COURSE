#!/bin/bash

a=$(cat file1.txt)
b=$(cat file2.txt)
c=$(cat file3.txt)

if [[ $a = $b && $a = $c ]]; then
    echo "Duplicate files with same contents will delete. Executing $0..."
    rm -v file2.txt file3.txt
else
    echo "Files do not match."
fi
