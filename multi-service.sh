#!/bin/bash
SERVICE1=$1
SERVICE2=$2

service $SERVICE1 status 2 >/dev/null
if [ $? -eq 0 ]; then
    echo "$SERVICE1 service already running"
else
    echo "$SERVICE1 service is not running , Let's start $SERVICE1 service"
    service $SERVICE1 start
fi

service $SERVICE2 status 2 >/dev/null
if [ $? -eq 0 ]; then
    echo "$SERVICE2 service already running"
else
    echo "$SERVICE2 service is not running , Let's start $SERVICE2 service"
    service $SERVICE2 start
fi
