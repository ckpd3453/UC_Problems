#!/bin/bash -x

ispresent=1
randomCheck=$((RANDOM%2))

if [ $ispresent -eq $randomCheck ]
then
	empRatePerHr=20
	empHrs=8
	Salary=$(($empRatePerHr*$empHrs))
	echo $Salary
else
	Salary=0
	echo $Salary
fi
