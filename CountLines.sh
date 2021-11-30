#!/bin/bash
#Author: Milad Mobini December 2021

# This bash script will go recursively through all the files and will count all the lines and return the total number of lines
# If not path is provided or the provideded path doesn't exists, it will recursively count from current directory 
OIFS="$IFS"
IFS=$'\n'
function count(){
	local file="$1"
	local lines=$3
	if [[ -d "$file" ]]; then 
		for item in $(ls $1)
		#ls $1 | while read f
		do
			lines=$(( $lines + $(count "$file/$item" $lines) ))
		done
	elif [[ -f "$file" ]]; then
		lines=$(( $lines + $(wc -l "$file" | cut -d ' ' -f1) ))
	fi
	echo $lines
}

if [[ $# -ge 1 && -e $1 ]]; then
	total=$(count $1 0)
else 
	total=$(count "./" 0)
fi
echo "There are a total of $total lines"
IFS="$OIFS"



### OLD CODE ###

#This bash script will go recursively through all the [ php, css, html, javascript, java,python, fxml, arduino, sql, bash]
#and will count all the lines and add them together
#This script will avoid all files with name of [*min.css, *all.css, *min.js, *all.js, *dtjava.js]

#The bash MUST BE RUN at the parent directory
#You can add restriction by adding "-not -path "FileName"" after "-name 'name'"
#press q to exit the program 

# find . -name '*.php' | xargs wc -l | grep total | cut -d 't' -f1 > result.txt;
# find . -name '*.css' -not -path "*min.css" -not -path "*all.css" | xargs wc -l | grep total | cut -d 't' -f1 >> result.txt;
# find . -name '*.html' | xargs wc -l | grep total | cut -d 't' -f1 >> result.txt;
# find . -name '*.js'  -not -path "*min.js" -not -path "*all.js" -not -path "*dtjava.js" | xargs wc -l | grep total | cut -d 't' -f1 >> result.txt;
# find . -name '*.java' | xargs wc -l | grep total | cut -d 't' -f1 >> result.txt;
# find . -name '*.py' | xargs wc -l | grep total | cut -d 't' -f1 >> result.txt;
# find . -name '*.fxml' | xargs wc -l | grep total | cut -d 't' -f1 >> result.txt;
# find . -name '*.ino' | xargs wc -l | grep total | cut -d 't' -f1 >> result.txt;
# find . -name '*.sql' | xargs wc -l | grep total | cut -d 't' -f1 >> result.txt;
# find . -name '*.sh' | xargs wc -l | grep total | cut -d 't' -f1 >> result.txt;
# { { echo "total number of lines:"; awk '{ sum += $1 } END { print sum }' result.txt; } | tr "\n" " " ; echo "zpress q to exit";} | tr "z" "\n" | less ;
# rm result.txt;

### END OF OLD CODE ###