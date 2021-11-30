#!/bin/bash

#RegEx, String

#Regular Experssion
#^ begining the line
#/< begining of the word
#/> end of the word
#$ end of the line
#.  placeholder for any
#(...) grouper
#(?: ...) not capture group
#
#* zero or more
#? zero or one
#+ one or more
# {n} exactly n times
# {n,} at least n times
# {n,m} at least n and no more m
#|  or other match
#[abc]  match any character
#[a-c] range charachter
#[^ab] not a and b
#\1 call the group 1
#/s space
#/S not space
#/d  digit
#/D not digit
#/w word
#/W not word



# [[ $data =~ $regex ]]
 
data="Hello World!"
regex="^H.*"
[[ $data =~ $regex ]] && echo matches
echo matched ${BASH_REMATCH[0]}    #the matched part

echo "sample data" | egrep -o "^s.+\s\<[sd]"  #to grep with regEx
echo "abcabdabe" | egrep -o "(ab[cd]){2}"  #to grep with regEx





##### String

#length of string: ${#text}

#extract from: ${text:index}
#extract from till: ${text:index:count}

#remove shortest match from left: ${text#pattern}
#remove longest match from left: ${text##pattern}
#remove shortest match from right: ${text%pattern}
#remove longest match from right: ${text%%pattern}

string=abcd1234abcd
echo ${#string}

echo ${string:3}
echo ${string:3:5}

echo ${string#*c}
echo ${string##*c}
echo ${string%c*}
echo ${string%%c*}

#change first pattern match:    ${text/$pattern/$replace}
#change all pattern match:    ${text//$pattern/$replace}
#change last pattern match:    ${text/$pattern/$replace}
#change  pattern match if at beginning:    ${text/#$pattern/$replace}
#change  pattern match if at end:    ${text/%$pattern/$replace}

pattern=bc
replace=EF
echo ${string/$pattern/$replace}
echo ${string//$pattern/$replace}
echo ${string/#ab/$replace}
echo ${string/%cd/$replace}


#with io redirection
regex="^H.*r"
egrep  -o "$regex" <<< $data
grep -Eo  "$regex" <<< $data