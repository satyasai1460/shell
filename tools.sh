#!/bin/bash
tools='terraform packer docker subfinder kops'
for tool in $tools; do
    $tool version >/dev/null 2>1
    if [ $? -eq 0 ]; then
        echo "$tool is already installed"
    else
        echo "Let's install $tool"
    fi
done
