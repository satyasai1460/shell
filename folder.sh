#!/bin/bash
for folder in $@; do
    if [ -d /etc/$folder ]; then
        echo "$folder exists"
    else
        echo "Lets create $folder"
        mkdir -p /etc/$folder
    fi
done
