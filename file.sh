#!/bin/bash
for file in $@; do
    if [ -f $file ]; then
        echo "$file exists"
    else
        echo "Lets create $file"
        echo $(date) >$file
    fi
done
