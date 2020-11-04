#!/bin/bash 
echo "Welcome to the Employee Wage program"
Fulltime=1
Halftime=2
absent=0
empHr=0
totalworkingdays=0
totalworkinghours=0
echo "Day  Working Hours"
while [[ $totalworkingdays -lt 20 && $totalworkinghours -lt 100 ]]
do
empcheck=$(($RANDOM%3))
case $empcheck in
$Fulltime)
totalworkingdays=$(($totalworkingdays+1))
empHr=8
totalworkinghours=$(($totalworkinghours+empHr)) ;;
$Halftime)
totalworkingdays=$(($totalworkingdays+1))
empHr=4
totalworkinghours=$(($totalworkinghours+empHr)) ;;
*)
totalworkingdays=$(($totalworkingdays+1))
empHr=0
totalworkinghours=$(($totalworkinghours+empHr)) ;;
esac
echo "$totalworkingdays" "$empHr" 
done

echo "Total Working Hours=" $totalworkinghours
