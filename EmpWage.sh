#!/bin/bash 
echo "Welcome to the Employee Wage program"
WagePerHr=20
DailyEmpWage=0
totalMonthWage=0
Fulltime=1
Halftime=2
absent=0
empHr=0
totalworkinghours=0
totalworkingdays=0
while [[ $totalworkingdays -lt 20 && $totalworkinghours -lt 100 ]]
do
empcheck=$(($RANDOM%3))
case $empcheck in
$Fulltime)
echo "Employee is present for full time"
totalworkingdays=$(($totalworkingdays+1))
empHr=8
totalworkinghours=$(($totalworkinghours+empHr)) ;;
$Halftime)
echo "Employee is present for half time"
totalworkingdays=$(($totalworkingdays+1))
empHr=4 
totalworkinghours=$(($totalworkinghours+empHr)) ;;
*)
echo "Employee is absent"
totalworkingdays=$(($totalworkingdays+1))
empHr=0 
totalworkinghours=$(($totalworkinghours+empHr)) ;;
esac
DailyEmpWage=$(($empHr*$WagePerHr))
echo "Day "$totalworkingdays"  Wage=" $DailyEmpWage
totalMonthWage=$(($totalMonthWage+$DailyEmpWage))
done
echo "Total Monthly Wage=" $totalMonthWage
echo "Total Working Days=" $totalworkingdays
echo "Total Working Hours=" $totalworkinghours
