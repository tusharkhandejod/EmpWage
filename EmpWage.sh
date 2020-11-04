#!/bin/bash 
echo "Welcome to the Employee Wage program"
WagePerHr=20
DailyEmpWage=0
totalMonthWage=0
Fulltime=1
Halftime=2
absent=0
empHr=0
for (( i=1; i<=20; i++ ))
do
echo "Day $i"
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
echo "Day $i  Wage=" $DailyEmpWage
totalMonthWage=$(($totalMonthWage+$DailyEmpWage))
done
echo "Total Monthly Wage=" $totalMonthWage
