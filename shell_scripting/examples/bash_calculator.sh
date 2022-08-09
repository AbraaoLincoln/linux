#!/bin/bash

var=`echo "scale=2; 2/5" | bc`
echo "result1: $var"

var1=6
var2=5
var3=4
var4=`bc << EOF
a1=($var1 * $var2)
b1=($var3 + $var1)
a1+b1
EOF
`
echo "result2: $var4"