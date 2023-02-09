#!/bin/bash

#Decision

if true; then
    echo hey
fi

#or
if true; then
    : #colon for empty body
fi

fname=$1
#-e if a file does exists
if [ -e "$fname" ]; then #must space before and after [ ]
    echo exists
fi
if test -e $fname; then #second method
    echo also exists
else
    echo no file found
fi
#extended mode
if [[ -e $fname ]]; then #must space before and after [ ]
    echo exists
fi
#numbers
x=5
y=7

if ((x > y)); then # $ is optional
    echo x is bigger
elif ((x < y)); then
    echo y is bigger
else
    echo they are equal
fi
#non-number equality
var1=no
var2=no

if [[ $var1 == $var2 ]]; then
    echo yes
else
    echo no
fi

#switch case
case $x in
1)
    echo it is one
    ;;
"5")
    echo it is five
    ;;
$y)
    echo it is y
    ;;
y|Y)
    echo it is literally y
    ;;
*)
    echo no idea
    ;;
esac

#menu
menu="A B C Quit"
select choice in $menu; do
    [[ $choice == Quit ]] && {
        echo bye Cyrus
        break
    }
    echo -ne "You selected $choice ($REPLY)\n\n"
done

#and operator: AND &&
z=5
if ((z < 10)) && ((z > 0)); then
    echo number is between 10 and 0
fi
if [[ -e $fname && -e $fname ]]; then
    echo fname is there
fi
# && can be used as if-then
[[ -e $fname ]] && echo "File $fname exists"

#or operator: OR ||
if (($z < 10 || $z > 0)); then
    echo number is ethier or
fi

# || can be used as if-else
[[ -e $fname ]] || echo "File $fname does not exists"

#combine
[[ -e $fname ]] && echo "File $fname exists" || echo "File $fname does not exists"
#multi line
#last command should return 0 or 1
[[ -e $fname ]] && {
    echo "File $fname exists"
} || {
    echo "File $fname does not exists"
}

# if if-then section fails then else is run (pitfalls) to avoid use complete if statement form
