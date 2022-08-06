#!/bin/bash

fruits=(banana orange watermelon)

for ((i = 0; i < 3; i++)) do
    echo "${fruits[$i]}"
done