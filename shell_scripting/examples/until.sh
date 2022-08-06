#!/bin/bash

count=10

until [ $count -gt 20 ]; do
    echo "count: $count"
    count=$[ $count + 2 ]
done