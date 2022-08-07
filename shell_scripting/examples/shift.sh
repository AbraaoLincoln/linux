#!/bin/bash

i=1

while [ -n "$1" ]; do
    echo "the parameter $i has the value: $1"
    i=$[ $i + 1 ]
    shift
done
