#Author: Milad Mobini February 2021
#This bash script will go recursively through all the [ php, css, html, javascript, java, fxml, arduino, sql, bash]
#and will count all the lines and add them together
#This script will avoid all files with name of [*min.css, *all.css, *min.js, *all.js]

#The bash MUST BE RUN at the parent directory
#You can add restriction by adding "-not -path "FileName"" after "-name 'name'"
#press q to exit the program 

find . -name '*.php' | xargs wc -l | grep total | cut -d 't' -f1 > result.txt;
find . -name '*.css' -not -path "*min.css" -not -path "*all.css" | xargs wc -l | grep total | cut -d 't' -f1 >> result.txt;
find . -name '*.html' | xargs wc -l | grep total | cut -d 't' -f1 >> result.txt;
find . -name '*.js'  -not -path "*min.js" -not -path "*all.js" | xargs wc -l | grep total | cut -d 't' -f1 >> result.txt;
find . -name '*.java' | xargs wc -l | grep total | cut -d 't' -f1 >> result.txt;
find . -name '*.fxml' | xargs wc -l | grep total | cut -d 't' -f1 >> result.txt;
find . -name '*.ino' | xargs wc -l | grep total | cut -d 't' -f1 >> result.txt;
find . -name '*.sql' | xargs wc -l | grep total | cut -d 't' -f1 >> result.txt;
find . -name '*.sh' | xargs wc -l | grep total | cut -d 't' -f1 >> result.txt;
{ { echo "total number of lines:"; awk '{ sum += $1 } END { print sum }' result.txt; } | tr "\n" " " ; echo "zpress q to exit";} | tr "z" "\n" | less ;
rm result.txt;
