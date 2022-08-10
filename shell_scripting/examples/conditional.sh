#!/bin/bash

if cd /; then
    echo "root directory found"
fi

if ls /home/$USER/test; then
    echo "directory test found"
else
    echo "directory test not found"
fi

var1="foo"
var2="bar"

if ls /$var1; then
    echo "directory $var1 found"
elif ls /$var2; then
    echo "directory $var2 found"
else 
    echo "none of the $var and $var2 directory was found"
fi