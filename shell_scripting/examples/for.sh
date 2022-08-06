#!/bin/bash

fruits=(banana orange watermelon)

echo "running the first for"
for fruit in banana orange watermelon; do
    echo "$fruit"
done

echo "running the second for"
for fruit in ${fruits[@]}; do
    echo "fruit now: $fruit"
done