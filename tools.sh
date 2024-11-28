#!/bin/bash
tools='terraform packer docker kops'
for tool in $tools; do
    $tool version
    if [ $? -eq 0 ]; then
        echo "$tool is already installed"
    else
        echo "Let's install $tool"
    fi
done
