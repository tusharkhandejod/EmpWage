#!/bin/bash 
echo "Welcome to the Employee Wage program"
WagePerHr=20
DailyEmpWage=0
present=1
absent=0
empHr=0
empcheck=$(($RANDOM%2))
if [[ $empcheck -eq $present ]] 
then
echo "Employee is present."
empHr=8
elif [[ $empcheck -eq $absent ]]
then
echo "Employee is absent"
empHr=0
fi

DailyEmpWage=$(($empHr*$WagePerHr))
echo "Daily Employee Wage=" $DailyEmpWage
