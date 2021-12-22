#!/bin/bash

read -rp "Which folder do you want to remove unmodified files from?: " folder
read -rp "How many days is too old?: " days

readarray -t files < <(find "$folder" -maxdepth 1 -type f -mtime "+$days")

for file in "${files[@]}"; do
    rm -i "$file"
done
