#!/bin/bash
service sshd status 2 >/dev/null
if [ $? -eq 0 ]; then
    echo "sshd service already running"
else
    echo "sshd service is not running , Let's start sshd service"
    service sshd start
fi
