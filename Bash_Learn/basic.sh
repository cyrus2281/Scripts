#!/bin/bash

#variables, printing, expantion

# BASH = Bourne-Again shell

#create varibale
variable=2
#   '' literal  "" take arguments
echo variable
echo $variable
echo '$variable'
echo "$variable"
# echo : -n without a new line after    -ne : take special commands (eg \n)
echo -n "hello $variable"
echo -ne "\nhello $variable\n"

#printf takes argument (spcae between args)
name=Cyrus
lName="Mo Bi Ni"
age=18
printf "Hello %s %s! You are %d years old\n" $name "$lName" $age #since lName returns multiple words it shout be in quatation marks

#variable Expansion
echo ${name}right after name

#comma seprated
echo T{a,o,i}m #expand each item
echo file.{txt,dat,html}
# range
echo {1..9}
echo {a..z}

#arithmetic expansion
#no $ inside
echo $((3 * 2)) #usign bracket
echo $((4 * 2)) #using double parantises

sum=$((3 + 5)) # $ is a must
echo $sum

#ternary operation
count=2
((bit = count > 2 ? 5 : 1))
echo $bit
#incerment and decrement
((variable++))
echo $variable
((variable--))
echo $variable

#command subsitution
list=$(ls)
echo $list
#old style with backticks ``
echo $(ls)
# | send output to next commad
# &&   if previous command works moves to the next
# ; ends the commands and start the next one

#parameter expansion
#use the first returns the next
#mv mila{e,d}

age=${1:-$variable} #mind the - before defualt value if #1 value not availabel do default
echo $age

opt=${2:-defualt value} #if 2 not aviable do defualt value
echo $opt

#indirect reference
box=apple
conatiner=box
echo $conatiner       #print box
echo ${!conatiner}    #pirnt apple
eval var=\$$conatiner #apple old style
echo $var
