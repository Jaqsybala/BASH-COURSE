#!/bin/bash

uid=$(cut -d":" -f3 < /etc/passwd | tail -1)
nuid=$(( uid + 1 ))

while read -r line;
do
    yes "534824" | sudo -S useradd -u "$nuid" -g ajb "$line"
    nuid=$(( nuid + 1 ))
    grep "$line" < /etc/passwd >> created_users.txt
done < "$1"
