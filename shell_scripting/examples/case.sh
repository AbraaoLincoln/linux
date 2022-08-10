#!/bin/bash

direction=north

case $direction in
    north)
        echo "the direction is north";;
    south)
        echo "the direction is south";;
    west)
        echo "the direction is west";;
    east)
        echo "the direction is east";;
    *)
        echo "invalid direction";;
esac