#!/bin/bash

function say_hello {
    echo "Hello"
}

count=1

while [ $count -le 10 ]; do
    say_hello
    count=$[ $count + 1 ]
done

function square {
    read -p "Enter an integer number: " number
    echo $[ $number * $number ]
}

result=`square`

echo "the result is: $result"