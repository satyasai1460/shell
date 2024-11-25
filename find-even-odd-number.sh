#!/bin/bash
set -x
read -p "Enter the Number:" NUM1

if [ $(expr $NUM1 % 2) -eq 0 ]; then
    echo "$NUM1 is a Even Number"
else
    echo "$NUM1 is a Odd Number"
fi
