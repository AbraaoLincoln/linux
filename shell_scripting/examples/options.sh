#!/bin/bash

while [ -n "$1" ]; do
    case "$1" in
        -a) echo "option was selected: A";;
        -b) echo "option was selected: B";;
        -c) echo "option was selected: C";;
        -*) echo "option not valid";;
    esac
    shift
done