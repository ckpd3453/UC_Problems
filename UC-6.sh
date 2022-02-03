#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20
totalEmpHr=0
totalWokingDays=0

while [[ $totalFullTime -lt $maxRateInMonth &&
	$totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	randomCheck=$((RANDOM%3))
	case $randomCheck in
				$isFullTime)
					empHrs=8
				;;
				$isPartTime)
					empHrs=4
				;;
				*)
					empHrs=0
				;;
	esac
	
	totalEmpHr=$(($totalEmpHr+$empHrs))
done

totalsalary=$(($totalEmpHr*$empRatePerHr))

