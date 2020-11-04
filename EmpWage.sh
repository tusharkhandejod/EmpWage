#!/bin/bash 
echo "Welcome to the Employee Wage program"
WagePerHr=20
DailyEmpWage=0
Fulltime=1
Halftime=2
absent=0
empHr=0
empcheck=$(($RANDOM%3))
case $empcheck in 
$Fulltime)
echo "Employee is present for full time"
empHr=8 ;;
$Halftime)
echo "Employee is present for half time"
empHr=4 ;;
*)
echo "Employee is absent"
empHr=0 ;;
esac
DailyEmpWage=$(($empHr*$WagePerHr))
echo "Daily Employee Wage=" $DailyEmpWage
