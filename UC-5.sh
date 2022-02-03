#!/bin/bash -x

isPartTime=1
isFullTime=2
totalSalary=0
empRatePerHr=20
numofworkingDays=20

for (( day=1; day<=$numofworkingDays; day++ ))
do
	randomcheck=$((RANDOM%3))
	case $randomcheck in
				$isFullTime )
					empHrs=8;
				;;
				$isPartTime )
					empHrs=4;
				;;
				*)
					empHrs=0
				;;
	esac

	Salary=$(($empHrs*$empRatePerHr))
	totalSalary=$(($totalSalary+$Salary))
done
