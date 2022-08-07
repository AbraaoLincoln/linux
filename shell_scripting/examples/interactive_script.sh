#!/bin/bash

printf "Whats is your name? "
read name
echo "Hello $name"

read -p "Whats is your age? "
echo "Your are $REPLY years old"

echo "What fruit do you like? "
if read -t 2 fruit; then
    echo "The fruit $fruit was choose"
else
    echo "2 seconds has pass, be faster next time"
fi

echo "Answer y or n, please\n"
read -n1 answer
case $answer in
    Y | y) echo -e "\nYour answer was yes";;
    N | n) echo -e "\nYour answer was not";;
    *) echo -e "\nYour answer was not valid";;
esac

echo "Enter your password"
read -s password
echo "The password is: $password"