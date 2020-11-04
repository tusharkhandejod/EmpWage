#!/bin/bash 
echo "Welcome to the Employee Wage program"
emppresent=1
empabsent=0
empcheck=$(($RANDOM%2))
if [[ $empcheck -eq 1 ]]
then
echo "Employee is present"
elif [[ $empcheck -eq 0 ]]
then
echo "Employee is absent"
fi
