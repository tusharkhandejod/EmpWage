#!/bin/bash 
echo "Welcome to the Employee Wage program"
WagePerHr=20
DailyEmpWage=0
fulltime=1
parttime=2
absent=0
empHr=0
empcheck=$(($RANDOM%3))
if [[ $empcheck -eq $fulltime ]]
then
echo "Employee is present for full time"
empHr=8
elif [[ $empcheck -eq $parttime ]]
then
echo "Employee is present for part time"
empHr=4
elif [[ $empcheck -eq $absent ]]
then
echo "Employee is absent"
empHr=0
fi

DailyEmpWage=$(($empHr*$WagePerHr))
echo "Daily Employee Wage=" $DailyEmpWage
