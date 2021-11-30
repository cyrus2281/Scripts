#!/bin/bash

#loop

#
#for loop
for ((i = 1; i <= 5; i++)); do
    echo -n $i
done
#for loop double variable
for ((i = 1, j = 5; i <= 5 && j > 1; i++, j -= 1)); do
    echo -ne "\ni= $i and j=$j"
done

#
#for in loop
for a in 1 2 3; do
    echo -ne "\n$a"
done
#for in with range
for a in {1..4}; do
    echo -ne "\nr $a"
done
#for in with command
for a in $(seq 1 3); do
    echo c1 $a
done
#for in with command
for a in $(ls); do
    echo c2 $a
done

#
#while loop
stop=0
while ((stop < 3)); do #runs on true
    echo stop is $stop
    ((stop++))
done
#endless while loop
while :; do #or while true; do
    echo endless loop
    break #break terminates the loop
done

#
#until loop
stop=0
until ((stop > 3)); do #runs on false
    echo stop is $stop
    ((stop++))
done

#
#break
for a in $(seq 1 5); do
    for b in $(seq 1 5); do
        if ((b == 3)); then
            break
        fi
        if ((a == 2)); then
            break 2
        fi
        echo outer $a inner $b
    done
done

#
#continue
for a in $(seq 1 5); do
    if ((a == 2 || a == 4)); then #skip 2 and 4
        continue
    fi
    echo con $a
done
#continue 2
for a in $(seq 1 3); do
    for b in $(seq 1 3); do
        if ((b == 2)); then #skip 2
            continue
        fi
        if ((a == 2)); then #skip 2
            continue 2
        fi
        echo outer $a inner $b
    done
done