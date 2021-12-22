#!/bin/bash

# Author: AJB
# Date created: 25/08/2021
# Last modified: 27/08/2021

# Description:
# This script creates a backup in the users current directory of all files in the home directory

# Usage: 
# You will use this script for your purpose

echo "Hello, ${USER^}!" 
echo "I will now back up home directory $HOME"

currentdir=$(pwd)

echo "You are running this script from $currentdir
Therefore, I will save the backup in $currentdir"

tar -cf $currentdir/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar $HOME/* 2> /dev/null

echo "Backup Completed Successfully."

exit 0
