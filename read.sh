#!/bin/bash

read -p "Input your first name: " name
read -p "Input your age: " age
PS3="What type phone do you use in company?: "
select phone in headset handheld;
do
    echo "You have chosen $phone."
    break
done
PS3="What department do you work in?: "
select dep in finance sales "customer service" engineering;
do 
    echo "You are in $dep department."
    break
done
read -p "Input the town you are from: " town
echo "My name is $name."
echo "I am $age."
echo "I am from $town."
echo "I have chosen $phone."
echo "I am in $dep department."
