#!/bin/bash

# array

#index : index
#associative : key
# -a for array
# -g for global
# -r for read only
# -z for empty

fruits[0]=apple;
fruits[1]=orange;
fruits[2]=banana;
#return all
echo ${fruits[@]}
#return all
echo ${fruits[*]}
#return length
echo ${#fruits[@]}
#return all the indexs
echo ${!fruits[@]}
#return index
echo ${fruits[2]}

#to remove from
unset fruits[2]
echo ${fruits[@]}

#to append
fruits=(${fruits[@]} lemon grape)
echo ${fruits[@]}

#slice array
echo ${fruits[@]:2}
echo ${fruits[@]:1:2}

#for loop
for fruit in ${fruits[@]};  do echo $fruit; done;
#to check for empty
[[ ! -z $fruits ]] && echo not empty

declare -ra arrays=${fruits[@]::3}
echo ${arrays[@]}
unset arrays[1] #gives error


#associative arrays
#-A : to declare
declare -A assoc
assoc[one]=first
assoc[two]=second
assoc[three]=third

echo ${assoc[@]}
echo ${#assoc[@]}
echo ${!assoc[@]}

#if the content have space, we should use "" while calling


#array in function

function arrFun(){
    local arr1=("${!1}")    #! get array by copy
    local -n arr1=$2   #-n get array by reference
}

#array can hold function
hiFun(){
    echo hi 
}
byeFun(){
    echo bye $1
}

arrFunc[0]=hiFun
arrFunc[1]=byeFun

for val in ${!arrFunc[@]} ; do ${arrFunc[$val]} ; done;

${arrFunc[1]} milad