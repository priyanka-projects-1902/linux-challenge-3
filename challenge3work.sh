#!/bin/bash

#----------------------------
#Author : Team Challenge 3
#Date : 3/29/2021

#Description : The file contains the solution for Linux Challenge 3
#
#

#-----------------------
#Version 1.0.0
#----------------------

#Script Body

#---Print Test-----# 

echo "Hello It Works!!"

#---Print Test with command substitution-----#

echo "Today's date is `date` "

#-----Print env Variable------#

echo "Environment variable are $USER and $PATH "

#-----Select one operation -----#

echo "Addition"
echo "Substraction"
echo "Multiplication"
echo "Division"

#----- If else Statement------

read -p "Enter and number " num
if [ $num -gt 5 ]
then echo "Number is greater than 5"
else
	echo "Number is less than or equal to 5"
fi

#------- test command-------

test 100 -gt 90 && echo "100 is greater than 90" || echo "100 is less than 90"

#------check various conditions-------

read -p "Enter first number " number1
read -p "Enter second number " number2

if [ $number1 -eq $number2 ]
then echo " Numbers $number1 and $number2 are equal"
elif [ $number1 -ne $number2 ]
then echo " Numbers $number1 and $number2 are not equal"
fi

if [ $number1 -gt $number2 ]
then echo "Number $number1 is greater than $number2"
elif [ $number1 -lt $number2 ]
then echo "Number $number1 is less than $number2"
else [ $number1 -le $number2 ]
echo "Number $number1 is equal to $number2"
fi

#------------Check Username and Password--------
USERNAME="labuser"
PASSWORD="pass123"

read -p "Enter Username " username
read -p "Enter Password " pass

if [ "$USERNAME" != "$username" ]
then echo "Incorrect Username "
elif [ "$PASSWORD" != "$pass" ]
then echo "Incorrect Password "
else
echo "You are authenticated"
fi

#--------For loop with line number----

for x in $(seq 5)
do 
	echo $x. $((x-1))
done

#--------While Loop-------

counter=1
while [ $counter -le 20 ]
do
	if [ $(( counter % 2)) -eq 0 ]
	then echo " $counter "
	fi
	(( counter++ ))
done

echo "-------Until Loop--------"
counter=1
while [ $counter -le 20 ]
do
	if [ $(( counter % 2 )) -ne 0 ]
        then echo " $counter "
        fi
	(( counter++))
done

#---------create functions substract multiply divide----------

read -p "Enter first Number" num1 
read -p "Enter second number " num2
RESULT1=0
RESULT2=0
RESULT3=0
function divide()
{
	RESULT1=$(( num1 / num2 ))
	multiply 
}

function multiply()
{
	RESULT2=$(( RESULT1 * 10 ))
	subtract 
}

function subtract()
{
	RESULT3=$(( RESULT2 - 10 ))
	echo "The result is $RESULT3"
}

divide 

#----------Print env variable and remainder-----------

echo " Today's date is $(date)"
echo " The remainder of 10/3 is $(( 10 % 3 )) "

#--------Multiply 4 * 34--------

function multiply2()
{
	echo " 4 * 34 is $(( 4 * 34 ))"
}

multiply2 







