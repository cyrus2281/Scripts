#!/bin/bash

#to handle kill operation (cntrl+c)
trap 'echo "sth went wrong"' INT TERM
#to perform a kill
# kill -TERM $(pidof <process-name>)



#to activate the debugger
#in bash: bash -x <script-name>
#for verbose: bash -xv <script-name>
#at top: #!/bin/bash -x
#change setting: set -x (set +x to disable)


#to include another bash file
# source array.sh


#with the export you can make environmental variables in shell
#to set globally #export var=milad
#to set locally #var=milad ./output.sh  #higher precedence
echo var is $var


#proccess id of the script : $$
#proccess id of the subshell : ${BASHPID}

#$OLDPWD : the previous working directory
#cd -    : toggle between PWD and OLDPWD

#to keep the style of returning command
echo $(ls)

ls=$(ls)
echo "$ls"

#IFS holds the value for the delimiter


#which : gives the location of the executable file
#type : gives the location of the executable file plus more information

#eval : it will run a string as a command

#to get help
#man    :long description
#help   :short description

#file   : file type of the file


#cut : cut into pieces based on the delimiter
#-d : delimiter
#-f : filed

#awk : get a string and perfom action
#-F: delimeter
#awk -F:'print $2'

#sed : read data one line at the time
#-r:  regular experssion

