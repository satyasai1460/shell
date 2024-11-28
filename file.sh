#!/bin/bash
for file in $@; do
    if [ -f /etc/$file ]; then
        echo "$file exists"
    else
        echo "Lets create $file"
        echo $(date) >/etc/$file
    fi
done
