#!/bin/bash

read -p "Enter a number: " number

case "$number" in
        [0-9]) echo "You have entered a single digit number: $number";;
        [0-9][0-9]) echo "You have enterd a two digit number: $number";;
        [0-9][0-9][0-9]) echo "You have entered a three digit number: $number";;
        *) echo "You have entered a number that is more than three digits."
esac
