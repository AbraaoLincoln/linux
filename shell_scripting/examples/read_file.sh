#!/bin/bash

lineCounter=1

cat ../interactive_script.md | while read line
do
    echo "Line: $lineCounter: $line"
    lineCounter=$[ $lineCounter + 1 ]
done 
