#!/bin/bash

IFSBACKUP=$IFS
IFS=$':'

echo "IFSBACKUP: $IFSBACKUP"

echo "new IFS: $IFS"

for name in 'foo bar':foo:bar; do
    echo $name
done

IFS=$IFSBACKUP

echo "Restore IFS: $IFS"