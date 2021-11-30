#!/bin/bash

# All bash commands for reminder

# A full summmary can always be provided using : man bash

#print 
echo "Hello World"

# pause
sleep 2

#variable declaration
name=Cyrus
os="Linux Ubuntu"
age=19

#Referecing the value
name2=$name
echo $os
echo "I am $age years old"

#Removing a variable
unset name

# Input
read name 

# Input with prompt
read -p "Enter name" name

# Postional Arguments
$1 # first value
$2 # second value
$# # number of all arguments
$* # string concat of all args
$? # Most recent command exist status

# Conditional Statments
# If
if true 
then
	echo "hi"
elif false 
then
	echo "hey"
else 
	echo "bye"
fi

# Conditions should be in [ ] with space
# newer versions use [[ ]] 
if [ $name = "Cyrus" ]; then
	echo "Hi $name"
fi

# Switch Case
case
	pattern1)
		statement
	;;
	*)
		default
	;;
esac

# Checkers
-f # is file
-d # is directory
-e # exists
-z # length is zero 
-n # length is not zero

# Conditions
-eq # equal check for integers
-le # less or equal than for integers
-ge # greater than for integers
 =  # equal for strings for []
 == # equal for strings for [[]]
 != # not equal for strings for [[]]
 *"Text"* # to check for substring Text in a string
 
# Operators
&& # and
|| # or

# To Perform arithemtic operations
let c=a+b
d=$((a+b))

# command substitution
now=`date`
echo $now # this will run the date command
user=$(who)
echo $user # this will run the who command

# Loops
# for loop
for item in list1 list2 list3
do 
	echo $item
done

for num in {10..100..5}; do 
	echo $num
done

for ((i=0;i<=50;i++)); do 
	echo $i
done

# While Loop
i=0
while [[ $i -lt 10 ]] 
do	((i++))
	echo "whiling"
done
#infinte loop
while :
do	
	echo "infinte"
done

# function
function print(){
	echo $1
	return 0
}

# Select menu
PS3="Choose a country"
select country in Germany France USA quit
do 	
	echo "country is $country"
	echo "Reply is $Reply"
	if [ $Reply -eq 4 ]; then
		break
	fi
done

