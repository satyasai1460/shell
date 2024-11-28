#!/bin/bash
# This script will calculate the Driving License Eligibility.
Current_year=2024
YOB=$1
Current_age=$(expr $Current_year - $YOB)
echo "Your Current Age is ${Current_age}."
if [ Current_age -lt 18 ]; then
    echo "You are Not eligible for Driving license"
elif
    [ $Current_age -gt 18 -a if $Current_age -lt 50 ]
then
    echo "You are Eligible for Driving License."
elif
    [ $Current_age -gt 50 -a if $Current_age -lt 100 ]
then
    echo "You are Eligible for Driving License, But Fitness and Eyesight Certificates are needed."
else
    [ $Current_age -gt 100 ]
    echo "Invalid Age"
fi
