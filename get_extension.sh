#!/bin/bash

read -p "What is your first name?: " firstname
read -p "What is your surname/family name?: " lastname
PS3="What type of phone do you have?: "
select phone in headset handheld;
do
    echo "You chose $phone."
    break
done
PS3="What department do you work in?: "
select dep in finance sales "customer service" engineering;
do 
    echo "You chose $dep."
    break
done
read -N 4 -p "What is your extension number? (must be 4 digits): " extension
echo
read -s -N 4 -p "What access code would you like to use when dialing in? (must 4 digits): " access
echo
echo $firstname,$lastname,$extension,$access,$phone,$dep >> extensions.csv
