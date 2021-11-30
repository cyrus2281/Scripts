#!/bin/bash

#output redirection

#read : read form prompt
#> writing to file
#>> appending to file

#write to standard error
# if a function is returning more than one output than we want, we can send them to a second string
function wordy() {
    echo message one 1>&2 #wrtie to stderr stream on console
    echo message two >&2  #wrtie to stderr stream on console
    echo real message
}
echo testing wording: $(wordy)
echo testing wording: $(wordy 2>/dev/null) #throwing away the unnecessary stuff
#merge to standard error tp standard output
#2>&1>destination
#>&1>destination
#>&destination
#&>destination

#to check if the user has python
[[ $(python --version 2>/dev/null) ]] && echo u have python || echo u dont have python

#here string
#command <<< $string
read hi <<<hello
echo $hi

#process subsitutuion
#>(commands) send
#<(commands) recieve

#tee  : send output to both console and file
#sort : sort file
#uinq : only unique values
#diff : difference of two list

#to get data as options
#getopts <opt-spec> <opt-var> <opt-data>
#: tell getopt script wil handle error messages
#: following each arg to indicate the next arg is data for that option
#default for data is $@
while getopts :ab:c opt; do
    case $opt in
    a)
        echo "it is a"
        ;;
    b)
        arg_b=$OPTARG
        echo "it is b and $arg_b"
        ;;
    c)
        echo "it is c and no arg"
        ;;
    \?)
        echo $OPTARG is not valid
        exit 1
        ;;
    :) echo option $OPTARG requires arg ;;
    esac
done
#why no argument passed,
