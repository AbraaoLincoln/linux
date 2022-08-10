#!/bin/bash

var1=10
var2=15

if [ $var1 -gt 8 ]; then
    echo "the variable $var1 is greater than 8"
fi

if [ $var1 -eq $var2 ]; then
    echo "the values $var1 and $var2 are equals"
else
    echo "the values $var1 and $var2 are diferent"
fi

name=foo

if [ $USER = name ]; then
    echo "$USER is equal to $name"
else 
    echo "$USER is not equal to $name"
fi

fruit=blueberry

if [ $fruit != orange ]; then
    echo "the fruit is not orange"
else
    echo "the fruit is $fruit"
fi

var3=''
var4='a'

if [ -n $var3 ]; then
    echo "the variable is not empty"
    echo $var3
fi

if [ -z $var4 ]; then
    echo "the variable is empty"
fi

if [ -d $HOME ]; then
    echo "the home directory exists and its content is: "
    cd $HOME
    ls -ls
else
    echo "directori home not found"
fi