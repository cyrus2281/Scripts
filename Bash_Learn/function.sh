#!/bin/bash

#function
#method 1
function myFunc() {
    :
}
#method 2
my_func() {
    echo $@ #all given parameters
    echo $* #all given parameters
    echo $# #number of given parameters
    echo $1 #first parameter
}
#to invoke
my_func
#argument
my_func a "b o" 5

loc_fun() {
    local p1=$1 #local variable
    shift       #move the parameter 1 to left
    p2=$1       #global variable
}

#if you want to load the script to the bash do NOT include the #!/bin/bash
#to load into memory . fileName.sh      No /
#type functionName : will show the functions saved in the bash

#bash return through chaning a non-global variable or printint out
echo_back() {
    echo returning
}
#putting the return into a variable
reply=$(echo_back)
echo $reply

#the keyword return is to used to show the status of the function
#function can return a number from 0 to 255 (bigger would be % 256)
#0 for succuss
#2 ways to get the retrun:  $?  and !name
returning() {
    return $1
}
returning 0
(($? == 0)) && echo yes;    # %? can be used once

if  returning 0 ; then echo "yes also"; fi

returning 258 
echo $? bigger is moduls 256

#function can both return and echo
allBack(){
    echo error  #returning value of 'error'
    return 5    #five errors
}
result=$(allBack);
echo $result and $?


#nested function, parent can have local function
parentFun(){
    echo I\'m parent
    childFun(){
        echo I\'m childcc
        
    }
    childFun
}

parentFun;