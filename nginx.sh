#!/bin/bash
service nginx status 2 >/dev/null
if [ $? -eq 0 ]; then
    echo "Nginx service already running"
else
    echo "nginx service is not running , Let's start nginx service"
    service nginx start
fi
