#!/bin/sh

echo "Enter the year = "
read year

if [ $(( year%400 )) -eq 0 ] || [ $(( year%100 )) -ne 0 ] && [ $(( year%4 )) -eq 0 ]
then 
echo " $year is Leap Year "
else
echo " $year is not a Leap Year "
fi

